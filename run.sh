#!/usr/bin/env bash

rm ${CHALLENGE_KEY}
printf "%s" ${CHALLENGE_KEY}.${EXTENSION} > .well-known/acme-challenge/${CHALLENGE_KEY}

$(command -v python2 || command -v python2.7 || command -v python2.6) -c \
"import BaseHTTPServer, SimpleHTTPServer; \
s = BaseHTTPServer.HTTPServer(('', 80), SimpleHTTPServer.SimpleHTTPRequestHandler); \
s.serve_forever()"
