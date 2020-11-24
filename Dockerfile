FROM ruby:2.3.8

RUN gem install bundler:1.17.3

RUN mkdir /app
WORKDIR /app

CMD bash -c "ruby create_by_thinreports.rb"

