FROM alpine:latest
RUN apk update && apk add bash

WORKDIR /app
COPY news_distribution.sh /app