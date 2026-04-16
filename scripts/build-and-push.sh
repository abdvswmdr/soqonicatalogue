#!/usr/bin/env bash
# Build and push soqonicatalogue + soqonicatalogue-db images.
# Tags with git SHA (immutable). Tags :latest only on main branch.
# Usage:
#   ./scripts/build-and-push.sh           # build + push
#   ./scripts/build-and-push.sh --local   # build + load into minikube, no push

set -euo pipefail

REPO_ROOT=$(cd "$(dirname "$0")/.." && pwd)
APP_IMAGE="abdvswmdr/soqonicatalogue"
DB_IMAGE="abdvswmdr/soqonicatalogue-db"
TAG=$(git -C "$REPO_ROOT" rev-parse --short HEAD)
BRANCH=$(git -C "$REPO_ROOT" rev-parse --abbrev-ref HEAD)
LOCAL_ONLY=false
K8S_DIR="$REPO_ROOT/../soqoni-k8s"

if [[ "${1:-}" == "--local" ]]; then
    LOCAL_ONLY=true
fi

echo "==> Tag:    $TAG"
echo "==> Branch: $BRANCH"
echo "==> Mode:   $([ "$LOCAL_ONLY" = true ] && echo 'local (minikube)' || echo 'push to Docker Hub')"
echo ""

# --- Build app image ---
echo "==> Building $APP_IMAGE:$TAG"
docker build \
    -t "$APP_IMAGE:$TAG" \
    -f "$REPO_ROOT/docker/soqonicatalogue/Dockerfile-release" \
    "$REPO_ROOT"

# --- Build DB image ---
echo "==> Building $DB_IMAGE:$TAG"
docker build \
    -t "$DB_IMAGE:$TAG" \
    -f "$REPO_ROOT/docker/soqonicatalogue-db/Dockerfile" \
    "$REPO_ROOT"

patch_manifests() {
    if [ ! -d "$K8S_DIR" ]; then
        echo "WARN: $K8S_DIR not found — skipping manifest patch"
        return
    fi
    echo "==> Patching k8s manifests with tag $TAG"
    sed -i "s|image: $APP_IMAGE:.*|image: $APP_IMAGE:$TAG|g" "$K8S_DIR/catalogue.yaml"
    sed -i "s|image: $DB_IMAGE:.*|image: $DB_IMAGE:$TAG|g"   "$K8S_DIR/catalogue-db.yaml"
    echo "    catalogue.yaml    -> $APP_IMAGE:$TAG"
    echo "    catalogue-db.yaml -> $DB_IMAGE:$TAG"
}

if [ "$LOCAL_ONLY" = true ]; then
    echo "==> Loading images into minikube"
    minikube image load "$APP_IMAGE:$TAG"
    minikube image load "$DB_IMAGE:$TAG"
    patch_manifests
    exit 0
fi

# --- Push immutable SHA tags ---
echo "==> Pushing $APP_IMAGE:$TAG"
docker push "$APP_IMAGE:$TAG"
echo "==> Pushing $DB_IMAGE:$TAG"
docker push "$DB_IMAGE:$TAG"

# --- Tag :latest only on main ---
if [[ "$BRANCH" == "main" ]]; then
    echo "==> On main — tagging and pushing :latest"
    docker tag "$APP_IMAGE:$TAG" "$APP_IMAGE:latest"
    docker tag "$DB_IMAGE:$TAG" "$DB_IMAGE:latest"
    docker push "$APP_IMAGE:latest"
    docker push "$DB_IMAGE:latest"
else
    echo "==> Not on main ($BRANCH) — skipping :latest"
fi

patch_manifests
echo ""
echo "Done. Apply with: kubectl apply -f $K8S_DIR/catalogue.yaml -f $K8S_DIR/catalogue-db.yaml"
