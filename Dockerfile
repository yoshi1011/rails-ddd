FROM ruby:3.1.2

ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

RUN mkdir /app
WORKDIR /app

RUN apt-get update -qq && \
    apt-get install -y sudo git build-essential libpq-dev postgresql-client

RUN gem install bundler

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle install
