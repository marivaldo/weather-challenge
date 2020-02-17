FROM ruby:2.6.3

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash
RUN apt-get install -y nodejs

RUN apt-get update -qq
RUN apt-get install -y yarn

RUN mkdir -p /weather-challenge

WORKDIR /tmp
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock

RUN gem install bundler
RUN bundle install
RUN yarn install
RUN gem install bundler-audit

WORKDIR /weather-challenge
ADD . /weather-challenge

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

RUN rm /etc/localtime
RUN ln -s /usr/share/zoneinfo/Brazil/East /etc/localtime
