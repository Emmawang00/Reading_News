#!/usr/bin/env bash

while IFS=, read -r content
do
      echo "$content"
done < news_articles.csv

