FROM alpine:3

LABEL org.opencontainers.image.authors="karavan"
RUN apk update \
    && apk add bind-tools netcat-openbsd curl traceroute jq iproute2 nmap nftables \
    && apk cache clean

COPY Dockerfile /Dockerfile
LABEL org.label-schema.docker.dockerfile="/Dockerfile" \
      org.label-schema.vcs-type="Git" \
      org.label-schema.vcs-url="https://github.com/karavan/netutils-container"
