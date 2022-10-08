#!/usr/bin/env bash
declare -a array=("apple" "orange" "strawberry")

for i in "${array[@]}"
do 
    echo "This ${i} is delicious!"
done