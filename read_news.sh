#!/usr/bin/env bash

read_news() {
    echo "How many articles do you want to read? (1-20)"
    read NUMBER

    COUNT = 0
    while IFS=, read -r category content
    do
        if [ $COUNT -eq $NUMBER ]
        then
            break
        fi
        echo "the category is $category"
        echo $content
        COUNT=$((COUNT+1))

    done < <(tail -n +2 $1)
}
read_news news.csv