FROM alpine:latest
RUN apk update && 
    apk upgrade && 
    apk add bash curl git &&
    rm -rf /var/cache/apk/*
