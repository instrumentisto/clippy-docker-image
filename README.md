clippy (Rust linter) Docker image
=================================

[![GitHub release](https://img.shields.io/github/release/instrumentisto/clippy-docker-image.svg)](https://hub.docker.com/r/instrumentisto/clippy/tags) [![Build Status](https://travis-ci.org/instrumentisto/clippy-docker-image.svg?branch=master)](https://travis-ci.org/instrumentisto/clippy-docker-image) [![Docker Pulls](https://img.shields.io/docker/pulls/instrumentisto/clippy.svg)](https://hub.docker.com/r/instrumentisto/clippy)




## Status

__PROJECT IS CLOSED AND ARCHIVED. NO MAINTAINING WILL BE CONTINUED.__

Use `rustup add component clippy` instead.




## What is clippy?

clippy is a [collection of lints][clippy lints] to catch common mistakes and improve your [Rust] code.

> [rust-lang-nursery.github.io/rust-clippy](https://rust-lang-nursery.github.io/rust-clippy)

> [github.com/rust-lang-nursery/rust-clippy](https://github.com/rust-lang-nursery/rust-clippy)




## How to use this image

Mount your project, and run `cargo clippy`:
```bash
docker run --rm -v "$(pwd)":/app -w /app instrumentisto/clippy
```

Specify additional clippy options if you require:
```bash
docker run --rm -v "$(pwd)":/app -w /app \
    instrumentisto/clippy -- -Dclippy -Wclippy_pedantic
```




## OpenSSL

As [Rust] crates ecosystem depends on [OpenSSL] quite hard at the moment, this image contains [OpenSSL] libs and sources pre-installed, so you can "just lint" your project without worrying about installing [OpenSSL] libs. 




## Image versions


### `latest`

Latest version of clippy.


### `X`

Latest version of clippy `X` branch.


### `X.Y`

Latest version of clippy `X.Y` branch.


### `X.Y.Z`

Concrete `X.Y.Z` version of clippy.




## License

clippy itself is licensed under [MPL 2.0 license][91].

clippy Docker image is licensed under [MIT license][92].




## Issues

We can't notice comments in the DockerHub, so don't use them for reporting issue or asking question.

If you have any problems with or questions about this image, please contact us through a [GitHub issue][10].





[10]: https://github.com/instrumentisto/clippy-docker-image/issues
[91]: https://github.com/rust-lang-nursery/rust-clippy/blob/master/LICENSE
[92]: https://github.com/instrumentisto/clippy-docker-image/blob/master/LICENSE.md

[clippy lints]: https://rust-lang-nursery.github.io/rust-clippy/master/index.html
[OpenSSL]: https://www.openssl.org
[Rust]: https://www.rust-lang.org
