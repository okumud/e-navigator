#!/bin/sh

set -ex

rm -f ${APP_DIR}/tmp/pids/server.pid

if [ ! -f Gemfile ]; then
  echo "source 'https://rubygems.org'" > Gemfile
  echo "gem 'rails', '~> 6'" >> Gemfile
  echo "gem 'bootsnap'" >> Gemfile
  touch Gemfile.lock
  bundle install
  rails new . --force --no-deps --database=mysql
  # --skip-bundle
else
  bundle install
fi

exec "$@"

