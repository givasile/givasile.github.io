FROM ruby:2.5

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN gem install bundler
RUN bundle install

# define the port number the container must expose
# EXPOSE 4000

COPY . .

# automatically serve
CMD bundle exec jekyll serve --host 0.0.0.0