#!/bin/sh

cd /home/akira/projects/aoibot/script/
bundle exec rake aoistream:reply RAILS_ENV=production
