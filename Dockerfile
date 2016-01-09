FROM alpine:latest
RUN apk add --no-cache bash curl git

RUN mkdir /var/data
VOLUME /var/data
WORKDIR /var/data
