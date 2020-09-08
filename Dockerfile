FROM ruby:2.7.1-alpine

RUN mkdir /app
WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

RUN bundle install

ADD . /app

CMD ["ruby", "service.rb", "-o", "0.0.0.0"]
