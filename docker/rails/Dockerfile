ARG RUBY_VER=3.0
FROM ruby:${RUBY_VER}-slim

ENV APP_DIR=/opt/myapp

RUN set -x \
 && apt-get update -qq \
 && apt-get install -y --no-install-recommends \
       libpq-dev \
       build-essential \
       curl \
 && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - \
 && apt-get install -y --no-install-recommends \
       nodejs \
 && npm install --global yarn

RUN mkdir ${APP_DIR}
WORKDIR ${APP_DIR}

COPY entrypoint.sh /opt/
RUN set -x \
 && chmod +x /opt/entrypoint.sh

ENTRYPOINT ["/opt/entrypoint.sh"]
EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]

ARG USER_ID=10000
ARG GROUP_ID=10000
ARG USER_NAME=user
RUN set -x \
 && useradd -u ${USER_ID} -o -m ${USER_NAME} \
 && groupmod -g ${GROUP_ID} ${USER_NAME}
USER ${USER_NAME}

# package for application specific

RUN set -x \
 && gem install bundler --conservative \
 && gem install pg
 
