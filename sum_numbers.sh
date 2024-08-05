#!/bin/bash

cat out{1..4}.txt

sum=0
for i in `cat out{1..4}.txt`; do
    sum=$((sum + i))
done

echo "sum = ${sum}"