FROM golang:1.25

WORKDIR /go/src/github.com/abdvswmdr/soqonicatalogue

COPY go.mod go.sum ./
RUN go mod download

COPY . .
COPY images/ /images/

RUN CGO_ENABLED=0 GOOS=linux go build -o /app/main ./cmd/cataloguesvc

ARG user=app
ARG group=app
ARG uid=1000
ARG gid=1000

RUN groupadd -g ${gid} ${group} \
    && useradd -u ${uid} -g ${gid} -m -s /bin/bash ${user}

RUN chown -R ${user}:${group} /app/main /images

USER ${user}

CMD ["/app/main", "-port=8081"]

EXPOSE 8081
