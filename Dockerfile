# https://hub.docker.com/r/rustlang/rust
FROM rustlang/rust:nightly-slim

MAINTAINER Instrumentisto Team <developer@instrumentisto.com>


# Download and install clippy.
RUN cargo install clippy --version 0.0.212 \
    \
 # Cleanup unnecessary files.
 && rm -rf /usr/local/cargo/registry


# Install OpenSSL sources and libs.
RUN apt-get update \
 && apt-get install -y --no-install-recommends --no-install-suggests \
            libssl-dev \
    \
 # Cleanup unnecessary files.
 && rm -rf /var/lib/apt/lists/*

ENV OPENSSL_LIB_DIR=/usr/lib/x86_64-linux-gnu \
    OPENSSL_INCLUDE_DIR=/usr/include/openssl


ENTRYPOINT ["cargo", "clippy"]
