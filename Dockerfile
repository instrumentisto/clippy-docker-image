# https://hub.docker.com/r/rustlang/rust
FROM rustlang/rust:nightly-slim

MAINTAINER Instrumentisto Team <developer@instrumentisto.com>


# Download and install clippy
RUN rustup update
RUN cargo install clippy --version 0.0.210 \
    \
 # Cleanup unnecessary files
 && rm -rf /usr/local/cargo/registry


ENTRYPOINT ["cargo", "clippy"]
