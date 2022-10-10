FROM alpine:latest
RUN apk update && apk add bash

WORKDIR /app
COPY read_news.sh /app
COPY news.csv /app