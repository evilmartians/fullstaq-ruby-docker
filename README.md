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
docker pull quay.io/evl.ms/fullstaq-ruby:3.1-jemalloc-slim
```

Or use as base image in your `Dockerfile`:

```docker
ARG RUBY_VERSION=3.2.2-jemalloc

FROM quay.io/evl.ms/fullstaq-ruby:${RUBY_VERSION}-slim
```

## Flavors

Ruby 3.2.2, 3.1.4, 3.0.6, and 2.7.8 with jemalloc and malloctrim are available. Images are built on top of Debian 10 (buster) and 11 (bullseye):

```sh
# 3.2:
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.2-jemalloc-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.2-jemalloc-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.2-jemalloc-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.2.2-jemalloc-buster
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

Latest patch versions for Ruby 3.2 on Debian 11 (bullseye) are also aliased with shortened tags including major and minor versions only: `3.2.2-jemalloc-bullseye → 3.2-jemalloc`

```sh
docker pull quay.io/evl.ms/fullstaq-ruby:3.2-jemalloc-slim   # Same as quay.io/evl.ms/fullstaq-ruby:3.2.2-jemalloc-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.2-jemalloc        # Same as quay.io/evl.ms/fullstaq-ruby:3.2.2-jemalloc-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:3.2-malloctrim-slim # Same as quay.io/evl.ms/fullstaq-ruby:3.2.2-malloctrim-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.2-malloctrim      # Same as quay.io/evl.ms/fullstaq-ruby:3.2.2-malloctrim-bullseye
```

For Ruby 3.0 and older, short aliases for latest patch versions are made against Debian 10 (buster): `3.0.6-jemalloc-buster → 3.0-jemalloc`


## Details

Ruby is installed from official APT package repository. Rbenv isn't used.

## Caveats

Bash login shell `bash -l -c 'command'` resets `$PATH` to default. It is not clear why it happens there, because in official Ruby image it works and this image is based on the same `debian:stretch-slim` base image.

That may hurt you if you're using `whenever` gem which wraps every command in Bash login shell by default. To remove this wrapping place following to the top of your `config/schedule.rb`:

```ruby
# config/schedule.rb
set :job_template, nil
```

[Fullstaq Ruby]: https://fullstaqruby.org/ "Ruby, optimized for production"
[Hongli Lai]: https://www.joyfulbikeshedding.com/
[Fullstaq]: https://fullstaq.com/
