FROM debian:buster-slim

RUN apt-get update && \
  apt-get install -y --no-install-recommends \
  automake-1.15 \
  bison \
  build-essential \
  ca-certificates \
  dfu-util \
  flex \
  gcc-arm-none-eabi \
  git-core \
  libfltk1.3-dev \
  libfreetype6-dev \
  libnewlib-arm-none-eabi \
  libpng-dev \
  libstdc++-arm-none-eabi-newlib \
  pkg-config \
  python \
  python3 \
  texinfo && \
  apt-get clean

COPY ./build /

ENTRYPOINT ["/build"]
