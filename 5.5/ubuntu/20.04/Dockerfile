FROM ubuntu:20.04

LABEL maintainer="SwiftWasm Maintainers <hello@swiftwasm.org>"
LABEL Description="Docker Container for the SwiftWasm toolchain and SDK"
LABEL org.opencontainers.image.source https://github.com/swiftwasm/swiftwasm-docker

RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update && \
    apt-get -q install -y \
    binutils \
    git \
    gnupg2 \
    libc6-dev \
    libcurl4 \
    libedit2 \
    libgcc-9-dev \
    libpython2.7 \
    libsqlite3-0 \
    libstdc++-9-dev \
    libxml2 \
    libz3-dev \
    pkg-config \
    tzdata \
    zlib1g-dev \
    && rm -r /var/lib/apt/lists/*


ARG SWIFT_TAG=swift-wasm-5.5.0-RELEASE
ENV SWIFT_PLATFORM_SUFFIX=ubuntu20.04_x86_64.tar.gz
ENV SWIFT_TAG=$SWIFT_TAG

RUN set -e; \
    SWIFT_BIN_URL="https://github.com/swiftwasm/swift/releases/download/$SWIFT_TAG/$SWIFT_TAG-$SWIFT_PLATFORM_SUFFIX" \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -q update && apt-get -q install -y curl && rm -rf /var/lib/apt/lists/* \
    && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz \
    && tar -xzf swift.tar.gz --directory / --strip-components=1 \
    && chmod -R o+r /usr/lib/swift \
    && rm -rf swift.tar.gz \
    && apt-get purge --auto-remove -y curl

# Print Installed Swift Version
RUN swift --version
