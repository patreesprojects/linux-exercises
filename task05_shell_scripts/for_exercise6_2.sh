#!/bin/bash

#Instead of printing steps like in the previous task,
#this script sums numbers as in a math exercise:
#1+2+3+4+5+6+7+8+9+10 = 55

sum=0
sequence=""

for i in {1..10}
do
    sum=$((sum + i))

    if (($i == 10)); then
        sequence="${sequence}${i}"
    else
        sequence="${sequence}${i}+"
    fi
done

echo "$sequence = $sum"
