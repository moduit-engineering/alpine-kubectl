FROM alpine:3.12

MAINTAINER moduit-engineering <engineering@moduit.id>

ARG KUBE_VERSION="v1.17.5"

#apk add --no-cache ca-certificates bash git openssh curl
RUN apk add --no-cache curl \
    && wget -q https://storage.googleapis.com/kubernetes-release/release/${KUBE_VERSION}/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl
    
# add the kube directory, to store some config    
RUN mkdir ~/.kube

WORKDIR /config

CMD bash
