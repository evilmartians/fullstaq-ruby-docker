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
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.2-jemalloc-slim
```

Or use as base image in your `Dockerfile`:

```docker
ARG RUBY_VERSION=3.0.2-jemalloc

FROM quay.io/evl.ms/fullstaq-ruby:${RUBY_VERSION}-slim
```

## Flavors

Ruby 3.0.2, 2.7.4, and 2.6.8 with jemalloc and malloctrim are available. Images are built on top of both Debian 9 (stretch) and 10 (buster):

```sh
# 3.0:
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.2-jemalloc-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.2-jemalloc-buster
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.2-jemalloc-stretch-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.2-jemalloc-stretch
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.2-malloctrim-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.2-malloctrim-buster
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.2-malloctrim-stretch-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.2-malloctrim-stretch

# 2.7:
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.4-jemalloc-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.4-jemalloc-buster
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.4-jemalloc-stretch-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.4-jemalloc-stretch
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.4-malloctrim-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.4-malloctrim-buster
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.4-malloctrim-stretch-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.4-malloctrim-stretch

# 2.6:
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.8-jemalloc-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.8-jemalloc-buster
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.8-jemalloc-stretch-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.8-jemalloc-stretch
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.8-malloctrim-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.8-malloctrim-buster
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.8-malloctrim-stretch-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.8-malloctrim-stretch
```

Latest patch versions on latest Debian are also aliased with shortened tags including major and minor versions only: `3.0.2-jemalloc-buster → 3.0-jemalloc`

```sh
docker pull quay.io/evl.ms/fullstaq-ruby:3.0-jemalloc-slim   # Same as quay.io/evl.ms/fullstaq-ruby:3.0.2-jemalloc-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.0-jemalloc        # Same as quay.io/evl.ms/fullstaq-ruby:3.0.2-jemalloc-buster
docker pull quay.io/evl.ms/fullstaq-ruby:3.0-malloctrim-slim # Same as quay.io/evl.ms/fullstaq-ruby:3.0.2-malloctrim-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.0-malloctrim      # Same as quay.io/evl.ms/fullstaq-ruby:3.0.2-malloctrim-buster
```

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
