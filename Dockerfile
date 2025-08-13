ARG DEBIAN_IMAGE=bookworm

FROM debian:${DEBIAN_IMAGE}

ARG RUBY_VERSION
ARG RUBY_VARIANT
ARG DEBIAN_VERSION

# RUN with pipe recommendation: https://github.com/hadolint/hadolint/wiki/DL4006
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN apt-get update -q \
    && apt-get dist-upgrade --assume-yes \
    && apt-get install --assume-yes -q --no-install-recommends \
      curl \
      gnupg \
      apt-transport-https \
      ca-certificates \
      gpg \
    && curl -SLf https://raw.githubusercontent.com/fullstaq-labs/fullstaq-ruby-server-edition/main/fullstaq-ruby.asc | gpg --dearmor -o /etc/apt/trusted.gpg.d/fullstaq-ruby.gpg \
    && echo "deb https://apt.fullstaqruby.org debian-${DEBIAN_VERSION} main" > /etc/apt/sources.list.d/fullstaq-ruby.list \
    && apt-get update -q \
    && apt-get install --assume-yes -q --no-install-recommends fullstaq-ruby-${RUBY_VERSION}-${RUBY_VARIANT} \
    && apt-get autoremove --assume-yes \
    && rm -rf /var/lib/apt/lists \
    && rm -fr /var/cache/apt \
    && rm /etc/apt/sources.list.d/fullstaq-ruby.list

ENV GEM_HOME=/usr/local/bundle \
    BUNDLE_PATH=/usr/local/bundle \
    BUNDLE_SILENCE_ROOT_WARNING=1 \
    BUNDLE_APP_CONFIG=/usr/local/bundle \
    RUBY_VERSION=${RUBY_VERSION}-${RUBY_VARIANT} \
    LANG=C.UTF-8 LC_ALL=C.UTF-8

# path recommendation: https://github.com/bundler/bundler/pull/6469#issuecomment-383235438
ENV PATH=$GEM_HOME/bin:$BUNDLE_PATH/gems/bin:/usr/lib/fullstaq-ruby/versions/${RUBY_VERSION}/bin:$PATH
# Make login shell (bash -l) to have the same path as regular one.
RUN echo 'PATH=$GEM_HOME/bin:$BUNDLE_PATH/gems/bin:/usr/lib/fullstaq-ruby/versions/${RUBY_VERSION}/bin:$PATH' >> /etc/profile.d/fullstaq-ruby.sh

CMD [ "irb" ]
