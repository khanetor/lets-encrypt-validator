#!/usr/bin/env bash

printf "%s" ${CHALLENGE_KEY1}.${EXTENSION1} > .well-known/acme-challenge/${CHALLENGE_KEY1}
printf "%s" ${CHALLENGE_KEY2}.${EXTENSION2} > .well-known/acme-challenge/${CHALLENGE_KEY2}
printf "%s" ${CHALLENGE_KEY3}.${EXTENSION3} > .well-known/acme-challenge/${CHALLENGE_KEY3}

$(command -v python2 || command -v python2.7 || command -v python2.6) -c \
"import BaseHTTPServer, SimpleHTTPServer; \
s = BaseHTTPServer.HTTPServer(('', 80), SimpleHTTPServer.SimpleHTTPRequestHandler); \
s.serve_forever()"
