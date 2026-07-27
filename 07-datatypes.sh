#!/bin/bash
NUM1=10
NUM2=linux

SUM=$(($NUM1+$NUM2))

echo "sum is: $SUM"

# Arrays
Movies=("RRR" "Varanasi" "Pushpa") # index always starts  from 0
echo "Movies are: ${Movies[@]}"
echo "First Movie is: ${Movies[0]}"
echo "Second Movie is: ${Movies[1]}"
echo "Third Movie is: ${Movies[2]}"