FROM node:16-alpine

RUN apk update && \
  apk upgrade && \
  apk add --no-cache \
  git \
  openssl \
  openssh-client \
  autoconf \
  automake \
  bash \
  g++ \
  libc6-compat \
  libjpeg-turbo-dev \
  libpng-dev \
  make \
  nasm

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]