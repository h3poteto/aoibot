# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

set :output, {:error => 'log/crontab.err.log', :standard => 'log/crontab.log'}

set :environment, :production

every 1.day, :at => '23:56' do
  rake "youtube:clear"
end

every 1.day, :at => '23:53' do
  rake "niconico:clear"
end

every 1.day, :at => '23:58' do
  rake "youtube:new"
end

every 1.day, :at => '23:59' do
  rake "niconico:new"
end

every 1.day, :at => '0:35' do
  rake "youtube:popular"
end

every 1.day, :at => '0:41' do
  rake "niconico:popular"
end

every 1.day, :at => '17:58' do
  rake "youtube:clear"
end
every 1.day, :at => '17:59' do
  rake "youtube:new"
end

every 1.day, :at => '18:14' do
  rake "youtube:popular"
end

