FROM jekyll/jekyll:pages

COPY ./Gemfile ./Gemfile.lock *.gemspec package.json ./

RUN bundle install
RUN gem install bundler:1.17.2

EXPOSE 4000
EXPOSE 35729

ENTRYPOINT ["bundle", "exec", "jekyll", "serve", "--livereload", "--host", "0.0.0.0"]
