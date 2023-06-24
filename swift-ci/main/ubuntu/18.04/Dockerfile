FROM ubuntu:18.04

RUN groupadd -g 998 build-user && \
    useradd -m -r -u 998 -g build-user build-user

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt -y update && apt -y install \
  build-essential       \
  clang                 \
  cmake                 \
  git                   \
  icu-devtools          \
  libcurl4-openssl-dev  \
  libedit-dev           \
  libicu-dev            \
  libncurses5-dev       \
  libpython3-dev        \
  libsqlite3-dev        \
  libxml2-dev           \
  ninja-build           \
  pkg-config            \
  python                \
  python-six            \
  python-pkg-resources  \
  python3-six           \
  python3-distutils     \
  python3-pkg-resources \
  rsync                 \
  swig                  \
  systemtap-sdt-dev     \
  tzdata                \
  unzip                 \
  uuid-dev

RUN apt-get install -y \
  # FIXME(katei): curl cli dependency is required for downloading build-sdk at build-time
  curl
COPY ./swift-ci/main/install-extra-packages.sh /tmp/install-extra-packages.sh
RUN /tmp/install-extra-packages.sh wasmtime cmake sccache && rm /tmp/install-extra-packages.sh

USER build-user

WORKDIR /home/build-user
