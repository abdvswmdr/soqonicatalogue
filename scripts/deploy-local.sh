#!/usr/bin/env bash
# Build, push, and deploy catalogue + catalogue-db to local minikube.
# Usage: ./scripts/deploy-local.sh

set -euo pipefail

REPO_ROOT=$(cd "$(dirname "$0")/.." && pwd)
APP_SERVICE="abdvswmdr/soqonicatalogue"
DB_SERVICE="abdvswmdr/soqonicatalogue-db"
APP_MANIFEST="$HOME/soqoni-k8s/catalogue.yaml"
DB_MANIFEST="$HOME/soqoni-k8s/mysql.yaml"
DEPLOYMENT="catalogue"
TAG=$(git -C "$REPO_ROOT" rev-parse --short HEAD)

echo "==> Tag: $TAG"

# Build and push both images
"$REPO_ROOT/scripts/build-and-push.sh"

# Swap image tags in manifests
OLD_APP_TAG=$(grep "image: $APP_SERVICE" "$APP_MANIFEST" | grep -oE '[a-f0-9]{7}$' || true)
OLD_DB_TAG=$(grep "image: $DB_SERVICE" "$DB_MANIFEST" | grep -oE '[a-f0-9]{7}$' || true)
sed -i "s|image: $APP_SERVICE:.*|image: $APP_SERVICE:$TAG|" "$APP_MANIFEST"
sed -i "s|image: $DB_SERVICE:.*|image: $DB_SERVICE:$TAG|" "$DB_MANIFEST"
echo "==> catalogue manifest: $OLD_APP_TAG -> $TAG"
echo "==> mysql manifest:     $OLD_DB_TAG -> $TAG"

# Scale down catalogue (not db — changing db image requires PVC wipe, handle manually)
kubectl scale deployment "$DEPLOYMENT" --replicas=0
kubectl wait --for=delete pod -l app="$DEPLOYMENT" --timeout=30s 2>/dev/null || true
if [ -n "$OLD_APP_TAG" ] && [ "$OLD_APP_TAG" != "$TAG" ]; then
    minikube image rm "$APP_SERVICE:$OLD_APP_TAG" 2>/dev/null && echo "==> Removed cached app $OLD_APP_TAG" || true
fi

# Apply and scale back up
kubectl apply -f "$APP_MANIFEST"
kubectl scale deployment "$DEPLOYMENT" --replicas=1
kubectl rollout status deployment/"$DEPLOYMENT"
echo ""
echo "==> Done. Catalogue running."
echo "    If you changed db schema, also run:"
echo "      kubectl apply -f $DB_MANIFEST"
echo "      (and delete the mysql PVC first if init data changed)"
