FROM ruby:3.2.2
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile Gemfile.lock ./
RUN gem install bundler:2.4.10
RUN bundle install
COPY . .
