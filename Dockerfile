FROM python:2.7.11
MAINTAINER Kha Nguyen <kha@myladybug.co>
RUN mkdir -p /tmp/letsencrypt/public_html/.well-known/acme-challenge
COPY run.sh /tmp/letsencrypt/public_html/run.sh
WORKDIR /tmp/letsencrypt/public_html

ENV CHALLENGE_KEY1 please_change_me
ENV EXTENSION1 change_me

ENV CHALLENGE_KEY2 please_change_me
ENV EXTENSION2 change_me

ENV CHALLENGE_KEY3 please_change_me
ENV EXTENSION3 change_me

EXPOSE 80
ENTRYPOINT ./run.sh
