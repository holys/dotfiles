#!/bin/sh 

cat $1 | while read item
do
    if [ -n $1 ];
    then
        axel -n10 -a $item
    fi
done
