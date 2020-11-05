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
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.2-jemalloc-slim
```

Or use as base image in your `Dockerfile`:

```docker
ARG RUBY_VERSION=2.7.2-jemalloc

FROM quay.io/evl.ms/fullstaq-ruby:${RUBY_VERSION}-slim
```

## Flavors

Ruby 2.6.6 and 2.7.2 with jemalloc and malloctrim are available. Images are built on either Debian 9 (stretch) or 10 (buster):

```sh
# 2.7:
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.2-jemalloc-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.2-jemalloc-buster
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.2-jemalloc-stretch-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.2-jemalloc-stretch
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.2-malloctrim-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.2-malloctrim-buster
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.2-malloctrim-stretch-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.2-malloctrim-stretch

# 2.6:
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.6-jemalloc-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.6-jemalloc-buster
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.6-jemalloc-stretch-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.6-jemalloc-stretch
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.6-malloctrim-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.6-malloctrim-buster
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.6-malloctrim-stretch-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.6-malloctrim-stretch
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
