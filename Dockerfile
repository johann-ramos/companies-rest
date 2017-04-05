FROM ruby:2.3.3

RUN apt-get update -qq && apt-get install -y  \
  build-essential  \
  libpq-dev \
  npm

RUN npm cache clean -f
RUN npm install -g n
RUN n 7.8.0
RUN ln -sf /usr/local/n/versions/node/7.8.0/bin/node /usr/bin/node

RUN mkdir /companies-rest
COPY Gemfile companies-rest/Gemfile
COPY Gemfile.lock companies-rest/Gemfile.lock
WORKDIR companies-rest
RUN bundle install

COPY . /companies-rest

CMD ["rails","server","-b","0.0.0.0"]
EXPOSE 3000