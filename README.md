Fullstaq Ruby Docker images
===========================

[Fullstaq Ruby] is a custom build of standard MRI Ruby interpreter with memory allocator replaced, security patches applied, and more goodies on the way.

These images are intended to be used while [Fullstaq] and [Hongli Lai] haven't build their own.

<a href="https://evilmartians.com/?utm_source=fullstaq-ruby-docker&utm_campaign=project_page">
<img src="https://evilmartians.com/badges/sponsored-by-evil-martians.svg" alt="Sponsored by Evil Martians" width="236" height="54">
</a>

## Usage
Pull it directly from the quay.io registry:

```sh
docker pull quay.io/evl.ms/fullstaq-ruby:3.3-jemalloc-slim
```

Or use as base image in your `Dockerfile`:

```docker
ARG RUBY_VERSION=3.3.0-jemalloc

FROM quay.io/evl.ms/fullstaq-ruby:${RUBY_VERSION}-slim
```

## Flavors

Ruby 3.3.0, 3.2.2, 3.1.4, 3.0.6, and 2.7.8 with jemalloc and malloctrim are available. Images are built on top of Debian 10 (buster), 11 (bullseye), also Ruby 3.2 and newer are build on top of Debian 12 (bookworm):

```sh
# 3.3:
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.0-jemalloc-bookworm-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.0-jemalloc-bookworm
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.0-jemalloc-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.0-jemalloc-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.0-jemalloc-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.0-jemalloc-buster
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.0-malloctrim-bookworm-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.0-malloctrim-bookworm
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.0-malloctrim-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.0-malloctrim-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.0-malloctrim-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.0-malloctrim-buster

# 3.2:
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.2-jemalloc-bookworm-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.2-jemalloc-bookworm
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.2-jemalloc-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.2-jemalloc-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.2-jemalloc-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.2-jemalloc-buster
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.2-malloctrim-bookworm-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.2-malloctrim-bookworm
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.2-malloctrim-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.2-malloctrim-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.2-malloctrim-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.2-malloctrim-buster

# 3.1:
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.4-jemalloc-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.4-jemalloc-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.4-jemalloc-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.4-jemalloc-buster
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.4-malloctrim-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.4-malloctrim-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.4-malloctrim-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.4-malloctrim-buster

# 3.0:
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.6-jemalloc-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.6-jemalloc-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.6-jemalloc-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.6-jemalloc-buster
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.6-malloctrim-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.6-malloctrim-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.6-malloctrim-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.6-malloctrim-buster

# 2.7:
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.8-jemalloc-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.8-jemalloc-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.8-jemalloc-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.8-jemalloc-buster
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.8-malloctrim-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.8-malloctrim-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.8-malloctrim-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.8-malloctrim-buster
```

Latest patch versions for Ruby 3.3 on Debian 12 (bookworm) are also aliased with shortened tags including major and minor versions only: `3.3.0-jemalloc-bookworm → 3.3-jemalloc`

```sh
docker pull quay.io/evl.ms/fullstaq-ruby:3.3-jemalloc-slim   # Same as quay.io/evl.ms/fullstaq-ruby:3.3.0-jemalloc-bookworm-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.3-jemalloc        # Same as quay.io/evl.ms/fullstaq-ruby:3.3.0-jemalloc-bookworm
docker pull quay.io/evl.ms/fullstaq-ruby:3.3-malloctrim-slim # Same as quay.io/evl.ms/fullstaq-ruby:3.3.0-malloctrim-bookworm-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.3-malloctrim      # Same as quay.io/evl.ms/fullstaq-ruby:3.3.0-malloctrim-bookworm
```

For Ruby 3.2 and 3.1, short aliases for latest patch versions are made against Debian 11 (bullseye): `3.2.2-jemalloc-bullseye → 3.2-jemalloc`

For Ruby 3.0 and 2.7, short aliases for latest patch versions are made against Debian 10 (buster): `3.0.6-jemalloc-buster → 3.0-jemalloc`


## Details

Ruby is installed from official APT package repository. Rbenv isn't used.


[Fullstaq Ruby]: https://fullstaqruby.org/ "Ruby, optimized for production"
[Hongli Lai]: https://www.joyfulbikeshedding.com/
[Fullstaq]: https://fullstaq.com/
