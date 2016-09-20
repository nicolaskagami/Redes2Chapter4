#!/bin/bash

i=0
for n in 10 1000 100000
do
    time=0
    while [ $i -lt $n ]
    do
        time=$(bc <<< "scale=3;$time + $(./a.out)")
        let i=i+1
    done
    time=$(bc <<< "scale=3;$time/$n")
    echo $time
done
