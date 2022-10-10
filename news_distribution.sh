#!/usr/bin/env bash

read_news() {
    echo "How many articles do you want to read? (1-20)"
    read NUMBER

    echo "What categories do you want to read? (business, tech, entertainment, politics, sport)"
    read CATEGORY

    COUNT = 0
    while IFS="," read -r category content
    do
        if [ $COUNT -eq $NUMBER ]
        then
            break
        fi
        if [ $category == $CATEGORY ]
        then
            echo $content
            COUNT = $((COUNT + 1))
        fi
    done < <(tail -n +2 $1)
}
read_news news.csv