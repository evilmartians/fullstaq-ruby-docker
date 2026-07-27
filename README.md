Fullstaq Ruby Docker images
===========================

[Fullstaq Ruby] is a custom build of standard MRI Ruby interpreter with memory allocator replaced, security patches applied, and more goodies on the way.

These images are intended to be used while [Fullstaq] and [Hongli Lai] haven't build their own.

<img src="https://cdn.evilmartians.com/badges/logo-no-label.svg" alt="Evil Martians logo" width="22" height="16" /> <b>Fullstaq Ruby Docker images</b> are maintained by <b><a href="https://evilmartians.com/">Evil Martians</a></b>, an American design and engineering consultancy for <b>developer tools, AI, and cybersecurity startups</b>.

## Usage
Pull it directly from the quay.io registry:

```sh
docker pull quay.io/evl.ms/fullstaq-ruby:3.4-jemalloc-slim
```

Or use as base image in your `Dockerfile`:

```docker
ARG RUBY_VERSION=3.4.9-jemalloc

FROM quay.io/evl.ms/fullstaq-ruby:${RUBY_VERSION}-slim
```

## Flavors

Ruby 4.0.3, 3.4.9 and 3.3.11 with jemalloc are available. Images are built on top of Debian 11 (bullseye), 12 (bookworm), 13 (trixie):

```sh
# 4.0:
docker pull quay.io/evl.ms/fullstaq-ruby:4.0.3-jemalloc-trixie-slim
docker pull quay.io/evl.ms/fullstaq-ruby:4.0.3-jemalloc-trixie
docker pull quay.io/evl.ms/fullstaq-ruby:4.0.3-jemalloc-bookworm-slim
docker pull quay.io/evl.ms/fullstaq-ruby:4.0.3-jemalloc-bookworm
docker pull quay.io/evl.ms/fullstaq-ruby:4.0.3-jemalloc-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:4.0.3-jemalloc-bullseye

# 3.4:
docker pull quay.io/evl.ms/fullstaq-ruby:3.4.9-jemalloc-trixie-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.4.9-jemalloc-trixie
docker pull quay.io/evl.ms/fullstaq-ruby:3.4.9-jemalloc-bookworm-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.4.9-jemalloc-bookworm
docker pull quay.io/evl.ms/fullstaq-ruby:3.4.9-jemalloc-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.4.9-jemalloc-bullseye

# 3.3:
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.11-jemalloc-trixie-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.11-jemalloc-trixie
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.11-jemalloc-bookworm-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.11-jemalloc-bookworm
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.11-jemalloc-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.3.11-jemalloc-bullseye
```

Latest patch versions for Ruby 3.4 on Debian 12 (bookworm) are also aliased with shortened tags including major and minor versions only: `3.4.9-jemalloc-bookworm → 3.4-jemalloc`

```sh
docker pull quay.io/evl.ms/fullstaq-ruby:3.4-jemalloc-slim   # Same as quay.io/evl.ms/fullstaq-ruby:3.4.9-jemalloc-bookworm-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.4-jemalloc        # Same as quay.io/evl.ms/fullstaq-ruby:3.4.9-jemalloc-bookworm
```

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
