FROM ruby:2.7.4

# RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
WORKDIR /fe

CMD ["rails", "server", "-b", "0.0.0.0"]