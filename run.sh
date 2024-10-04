#!/bin/bash


echo 'This simulates some build or test process'
echo 'This is a part of a legit PR'

nohup sleep 200 &
disown

sleep 100
