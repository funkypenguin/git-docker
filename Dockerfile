FROM alpine:latest
RUN apk add --no-cache bash curl git openssh

# BUILD_DATE and VCS_REF are immaterial, since this is a 2-stage build, but our build
# hook won't work unless we specify the args
ARG BUILD_DATE
ARG VCS_REF

# Good docker practice, plus we get microbadger badges
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/funkypenguin/git-docker.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="2.2-r1"

RUN mkdir /var/data
RUN mkdir /root/.ssh
VOLUME /var/data
VOLUME /root/.ssh
RUN chmod 700 /root/.ssh

WORKDIR /var/data
