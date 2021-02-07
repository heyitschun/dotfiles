#!/bin/bash

FILE=$1

LINES=$(cat $FILE)

for LINE in $LINES
do
    echo "-> $LINE"
done

