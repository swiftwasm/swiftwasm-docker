#!/usr/bin/env bash

install_wasmtime() {
  export WASMTIME_HOME="${WASMTIME_HOME:-$PREFIX/wasmtime}"
  curl https://wasmtime.dev/install.sh -sSf | bash /dev/stdin --version v10.0.1
  ln -sf "$WASMTIME_HOME/bin/wasmtime" "$PREFIX/bin/wasmtime"
}

install_cmake() {
  local version="3.29.7"
  local workdir
  workdir="$(mktemp -d)"
  curl -L -o "$workdir/install_cmake.sh" "https://github.com/Kitware/CMake/releases/download/v$version/cmake-$version-linux-$(uname -m).sh"
  chmod +x "$workdir/install_cmake.sh"
  "$workdir/install_cmake.sh" --skip-license --prefix="$PREFIX"
}

install_sccache() {
  local version="v0.3.0"
  mkdir "$PREFIX/sccache"
  (
    cd "$PREFIX/sccache" && \
    curl -L "https://github.com/mozilla/sccache/releases/download/$version/sccache-$version-$(uname -m)-unknown-linux-musl.tar.gz" | \
    tar xz --strip-components 1
  )
  chmod +x "$PREFIX/sccache/sccache"
  ln -sf "$PREFIX/sccache/sccache" "$PREFIX/bin/sccache"
}

install_ninja() {
  local version="v1.11.1"
  local workdir
  workdir="$(mktemp -d)"
  curl -L "https://github.com/ninja-build/ninja/archive/refs/tags/$version.tar.gz" | tar xz --strip-component=1
  cmake -B "$workdir" -S . -DCMAKE_INSTALL_PREFIX="$PREFIX"
  cmake --build "$workdir" --target install -- -j "$(nproc)"
}

# ./install-extra-packages.sh [package1] [package2] ...
# Install packages into $PREFIX (default: /usr/local)

set -e
export PREFIX="${PREFIX:-/usr/local}"

for package in "$@"; do
  echo "Installing $package..."
  install_"$package"
done
