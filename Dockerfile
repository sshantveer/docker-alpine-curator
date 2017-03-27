FROM alpine:3.5

MAINTAINER Enterprise Platform <enterpriseplatformservices@mitchell.com>

# Installing bash, python3, pip and elasticsearch-curator
RUN apk add --update \
    libstdc++ \
    bash \
    --no-cache python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    pip3 install elasticsearch-curator==4.2.6 && \
    rm -r /root/.cache && \
    rm /var/cache/apk/*
