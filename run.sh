#!/usr/bin/env bash

rm ${LETS_ENCRYPT_CHALLENGE_KEY}
printf "%s" ${LETS_ENCRYPT_CHALLENGE_KEY} > .well-known/acme-challenge/${LETS_ENCRYPT_CHALLENGE_KEY}

$(command -v python2 || command -v python2.7 || command -v python2.6) -c \
"import BaseHTTPServer, SimpleHTTPServer; \
s = BaseHTTPServer.HTTPServer(('', 80), SimpleHTTPServer.SimpleHTTPRequestHandler); \
s.serve_forever()"

