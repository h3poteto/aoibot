#!/bin/sh

cd /home/akira/projects/aoibot/script/
bundle exec rake userstream:reply RAILS_ENV=production
