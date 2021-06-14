FROM ruby:2.7.3-alpine AS build-env

ARG BUNDLER_VERSION=2.2.15
ENV BUNDLER_VERSION=${BUNDLER_VERSION}

# linux-headers: raindrops
ENV BASE_PACKAGES="git openssl less libcurl"\
    BUILD_PACKAGES="bash curl-dev ruby-dev build-base"\
    DEV_PACKAGES="zlib-dev libxml2-dev libxslt-dev tzdata yaml-dev postgresql postgresql-dev ncurses"\
    RUBY_PACKAGES="ruby-json yaml nodejs-current nodejs-npm yarn shared-mime-info"\
    GEM_PACKAGES="linux-headers"

RUN apk update &&\
    apk upgrade &&\
    apk add --update --no-cache\
    $BASE_PACKAGES\
    $BUILD_PACKAGES\
    $DEV_PACKAGES\
    $RUBY_PACKAGES\
    $GEM_PACKAGES

ENV LANG=C.UTF-8\
    GEM_HOME=/bundle\
    BUNDLE_JOBS=4\
    BUNDLE_RETRY=3
ENV BUNDLE_PATH $GEM_HOME
ENV BUNDLE_APP_CONFIG=$BUNDLE_PATH\
    BUNDLE_BIN=$BUNDLE_PATH/bin
ENV PATH /app/bin:$BUNDLE_BIN:$PATH

WORKDIR /app


################
# GEM env
################

FROM build-env AS build-gem-env

ARG RAILS_ROOT=/app
ARG RAILS_ENV

ENV RAILS_ENV=${RAILS_ENV:-production}
ENV BUNDLE_PATH /vendor/bundle

WORKDIR $RAILS_ROOT

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

RUN gem install bundler -v "$BUNDLER_VERSION"
RUN if [ "$RAILS_ENV" = "production" ] ; then bundle config set without 'development test'; else bundle config set without 'production'; fi
# RUN if [ "$RAILS_ENV" = "production" ] ; then bundle config set deployment 'true'; fi
RUN bundle install

EXPOSE 2300
