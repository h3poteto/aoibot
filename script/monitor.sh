#!/usr/bin/sh
while true
do
    sleep 10
    isAlive=`ps -ef | grep "aoistream" | grep -v grep | wc -l`
    if [ $isAlive -lt 1 ]; then
	    #死んでる
	    nohup sh ./script/userstream.sh > log/stream.log 2> log/stream_err.log < /dev/null &
    fi
done
