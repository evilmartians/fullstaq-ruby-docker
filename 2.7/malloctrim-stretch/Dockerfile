FROM debian:stretch

ARG RUBY_VERSION=2.7.1-malloctrim

# RUN with pipe recommendation: https://github.com/hadolint/hadolint/wiki/DL4006
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN apt-get update -q \
    && apt-get dist-upgrade --assume-yes \
    && apt-get install --assume-yes -q --no-install-recommends \
      curl \
      gnupg \
      apt-transport-https \
      ca-certificates \
    && curl -SLf https://raw.githubusercontent.com/fullstaq-labs/fullstaq-ruby-server-edition/master/fullstaq-ruby.asc | apt-key add - \
    && echo "deb https://apt.fullstaqruby.org debian-9 main" > /etc/apt/sources.list.d/fullstaq-ruby.list \
    && apt-get update -q \
    && apt-get install --assume-yes -q --no-install-recommends fullstaq-ruby-${RUBY_VERSION} \
    && apt-get autoremove --assume-yes \
    && rm -rf /var/lib/apt/lists \
    && rm -fr /var/cache/apt

ENV GEM_HOME /usr/local/bundle
ENV BUNDLE_PATH="$GEM_HOME" \
    BUNDLE_SILENCE_ROOT_WARNING=1 \
    BUNDLE_APP_CONFIG="$GEM_HOME" \
    RUBY_VERSION=$RUBY_VERSION \
    LANG=C.UTF-8 LC_ALL=C.UTF-8

# path recommendation: https://github.com/bundler/bundler/pull/6469#issuecomment-383235438
ENV PATH $GEM_HOME/bin:$BUNDLE_PATH/gems/bin:/usr/lib/fullstaq-ruby/versions/${RUBY_VERSION}/bin:$PATH

CMD [ "irb" ]
