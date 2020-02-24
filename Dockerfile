FROM ruby:2.5

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

RUN gem sources --remove https://rubygems.org/ && gem sources -a https://gems.ruby-china.com/

RUN gem install github-pages
RUN gem install jekyll bundler

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle install
#RUN bundle exec jekyll serve --host 0.0.0.0
