FROM debian:buster

RUN apt-get update && \
  apt-get install -y \
  bison \
  build-essential \
  dfu-util \
  flex \
  gcc-arm-none-eabi \
  git-core \
  libfltk1.3-dev \
  libfreetype6-dev \
  libpng-dev \
  pkgconf \
  python && \
  apt-get clean

COPY ./build /

ENTRYPOINT ["/build"]
