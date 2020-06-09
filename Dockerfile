FROM alpine:3.11

MAINTAINER moduit-engineering <enginer@gmail.com>

ARG KUBE_VERSION="v1.17.5"

RUN apk add --no-cache ca-certificates bash git openssh curl \
    && wget -q https://storage.googleapis.com/kubernetes-release/release/${KUBE_VERSION}/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl

WORKDIR /config

CMD bash
