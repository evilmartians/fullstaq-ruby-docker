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
ARG RUBY_VERSION=3.1.1-jemalloc

FROM quay.io/evl.ms/fullstaq-ruby:${RUBY_VERSION}-slim
```

## Flavors

Ruby 3.1.1, 3.0.3, 2.7.5, and 2.6.9 with jemalloc and malloctrim are available. Images are built on top of Debian 9 (stretch), 10 (buster), and 11 (bullseye):

```sh
# 3.1:
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.1-jemalloc-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.1-jemalloc-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.1-jemalloc-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.1-jemalloc-buster
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.1-jemalloc-stretch-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.1-jemalloc-stretch
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.1-malloctrim-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.1-malloctrim-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.1-malloctrim-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.1-malloctrim-buster
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.1-malloctrim-stretch-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.1.1-malloctrim-stretch

# 3.0:
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.3-jemalloc-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.3-jemalloc-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.3-jemalloc-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.3-jemalloc-buster
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.3-jemalloc-stretch-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.3-jemalloc-stretch
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.3-malloctrim-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.3-malloctrim-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.3-malloctrim-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.3-malloctrim-buster
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.3-malloctrim-stretch-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.0.3-malloctrim-stretch

# 2.7:
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.5-jemalloc-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.5-jemalloc-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.5-jemalloc-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.5-jemalloc-buster
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.5-jemalloc-stretch-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.5-jemalloc-stretch
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.5-malloctrim-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.5-malloctrim-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.5-malloctrim-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.5-malloctrim-buster
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.5-malloctrim-stretch-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.7.5-malloctrim-stretch

# 2.6:
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.9-jemalloc-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.9-jemalloc-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.9-jemalloc-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.9-jemalloc-buster
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.9-jemalloc-stretch-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.9-jemalloc-stretch
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.9-malloctrim-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.9-malloctrim-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.9-malloctrim-buster-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.9-malloctrim-buster
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.9-malloctrim-stretch-slim
docker pull quay.io/evl.ms/fullstaq-ruby:2.6.9-malloctrim-stretch
```

Latest patch versions for Ruby 3.1 on Debian 11 (bullseye) are also aliased with shortened tags including major and minor versions only: `3.1.1-jemalloc-bullseye → 3.1-jemalloc`

```sh
docker pull quay.io/evl.ms/fullstaq-ruby:3.1-jemalloc-slim   # Same as quay.io/evl.ms/fullstaq-ruby:3.0.3-jemalloc-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.1-jemalloc        # Same as quay.io/evl.ms/fullstaq-ruby:3.0.3-jemalloc-bullseye
docker pull quay.io/evl.ms/fullstaq-ruby:3.1-malloctrim-slim # Same as quay.io/evl.ms/fullstaq-ruby:3.0.3-malloctrim-bullseye-slim
docker pull quay.io/evl.ms/fullstaq-ruby:3.1-malloctrim      # Same as quay.io/evl.ms/fullstaq-ruby:3.0.3-malloctrim-bullseye
```

For Ruby 3.0 and older, short aliases for latest patch versions are made against Debian 10 (buster): `3.0.3-jemalloc-buster → 3.0-jemalloc`


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
