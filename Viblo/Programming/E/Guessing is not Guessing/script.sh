#!/bin/bash


left=0
right=$(echo "18446744073709551616" | bc)
high="high"
low="low"
while true;do
    center=$(echo "$left + $right" | bc)
    center=$(echo "$center / 2" | bc)
    echo $center
    echo $center >> guessingnumber.txt | sleep 2 
    lastoutput=$(awk '/./{line=$0} END{print line}' result.txt)
    echo $lastoutput
    if echo "$lastoutput" | grep -q "$high"; then
        right=$(echo "$center - 1" | bc)
    elif echo "$lastoutput" | grep -q "$low";then
        left=$(echo "$center + 1" | bc)
    else
        break
    fi
done

