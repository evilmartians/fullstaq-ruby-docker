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
docker pull quay.io/evl.ms/fullstaq-ruby:3.4-jemalloc-slim
```

Or use as base image in your `Dockerfile`:

```docker
ARG RUBY_VERSION=3.4.1-jemalloc

FROM quay.io/evl.ms/fullstaq-ruby:${RUBY_VERSION}-slim
```

## Flavors

Ruby 3.4.1, 3.3.7, 3.2.6 and 3.1.6 with jemalloc and malloctrim are available. Images are built on top of Debian 10 (buster), 11 (bullseye), also Ruby 3.2 and newer are build on top of Debian 12 (bookworm):

```sh
# 3.4:
docker pull quay.io/evl.ms/fullstaq-ruby:3.4.1-jemalloc-bookworm-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.4.1-jemalloc-bookworm
docker pull quay.io/evl.ms/fullstaq-ruby:3.4.1-jemalloc-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.4.1-jemalloc-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:3.4.1-jemalloc-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.4.1-jemalloc-buster
docker pull quay.io/evl.ms/fullstaq-ruby:3.4.1-malloctrim-bookworm-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.4.1-malloctrim-bookworm
docker pull quay.io/evl.ms/fullstaq-ruby:3.4.1-malloctrim-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.4.1-malloctrim-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:3.4.1-malloctrim-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.4.1-malloctrim-buster

# 3.3:
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.7-jemalloc-bookworm-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.7-jemalloc-bookworm
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.7-jemalloc-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.7-jemalloc-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.7-jemalloc-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.7-jemalloc-buster
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.7-malloctrim-bookworm-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.7-malloctrim-bookworm
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.7-malloctrim-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.7-malloctrim-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.7-malloctrim-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.7-malloctrim-buster

# 3.2:
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.6-jemalloc-bookworm-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.6-jemalloc-bookworm
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.6-jemalloc-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.6-jemalloc-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.6-jemalloc-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.6-jemalloc-buster
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.6-malloctrim-bookworm-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.6-malloctrim-bookworm
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.6-malloctrim-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.6-malloctrim-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.6-malloctrim-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.6-malloctrim-buster

# 3.1:
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.6-jemalloc-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.6-jemalloc-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.6-jemalloc-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.6-jemalloc-buster
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.6-malloctrim-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.6-malloctrim-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.6-malloctrim-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.6-malloctrim-buster
```

Latest patch versions for Ruby 3.4 on Debian 12 (bookworm) are also aliased with shortened tags including major and minor versions only: `3.4.1-jemalloc-bookworm → 3.4-jemalloc`

```sh
docker pull quay.io/evl.ms/fullstaq-ruby:3.4-jemalloc-slim   # Same as quay.io/evl.ms/fullstaq-ruby:3.4.1-jemalloc-bookworm-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.4-jemalloc        # Same as quay.io/evl.ms/fullstaq-ruby:3.4.1-jemalloc-bookworm
docker pull quay.io/evl.ms/fullstaq-ruby:3.4-malloctrim-slim # Same as quay.io/evl.ms/fullstaq-ruby:3.4.1-malloctrim-bookworm-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.4-malloctrim      # Same as quay.io/evl.ms/fullstaq-ruby:3.4.1-malloctrim-bookworm
```

For Ruby 3.2 and 3.1, short aliases for latest patch versions are made against Debian 11 (bullseye): `3.2.6-jemalloc-bullseye → 3.2-jemalloc`

## Details

Ruby is installed from official APT package repository. Rbenv isn't used.

## Bumping versions

After a new version of Ruby was released:

 1. Check pull requests at the https://github.com/fullstaq-ruby/server-edition/ repository and ensure that packages for the target version has been build and published (pull request adding this has been merged).

 2. Execute `make bump VERSION=X.Y.Z` (specify full version in `X.Y.Z`), it will replace previous patch version in both Github Action and README files.

 3. Commit and push changed `README.md` and `.github/workflows/build-push.yml`. Once they will reach main branch, new images will be pushed to the registry automatically.

[Fullstaq Ruby]: https://fullstaqruby.org/ "Ruby, optimized for production"
[Hongli Lai]: https://www.joyfulbikeshedding.com/
[Fullstaq]: https://fullstaq.com/
