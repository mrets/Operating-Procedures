FROM ruby:2.7.5-bullseye

ENV BUNDLE_PATH=/usr/local/bundle

WORKDIR /srv/jekyll

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

EXPOSE 4000 35729

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--port", "4000", "--livereload", "--livereload-port", "35729"]
