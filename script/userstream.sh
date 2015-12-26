#!/bin/sh

cd $(dirname ${BASE_SOURCE: -$0})
cd ../
$HOME/.rbenv/shims/bundle exec rake aoistream:reply RAILS_ENV=production & echo $! > tmp/pids/userstream.pid
