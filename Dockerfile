FROM ubuntu:16.04
MAINTAINER michael.nygard@n6consulting.com
ENV REFRESHED_AT 2018-01-29

# Setup specifc Envs
ENV RUBY_CONFIGURE_OPTS --disable-install-doc

# Install Wget
RUN /usr/bin/apt-get update && apt-get -y install wget \
  tzdata \
  build-essential \
  cmake \
  libpq-dev \
  mysql-client \
  libmysqlclient-dev \
  libsqlite3-dev\
  nodejs \
  git

# Install Ruby-Install
RUN wget -O ruby-install-0.6.1.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.1.tar.gz \
  && tar -xzvf ruby-install-0.6.1.tar.gz \
  && cd ruby-install-0.6.1/ \
  && make install

# Install Ruby
RUN ruby-install --system ruby 2.3

# Install RubyGems
RUN gem update --system --no-rdoc --no-ri

# App
RUN mkdir -p /app
WORKDIR /app
ADD Gemfile /app/Gemfile
RUN bundle install
