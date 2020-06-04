#!/bin/bash

/usr/bin/metview

minstances=`ps aux | grep metview | grep -v grep | wc -l`


while [ "$minstances" != "0" ]
do
  sleep 10
done


