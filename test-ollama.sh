#!/bin/bash

HOST="${1:=localhost}"
PORT="${2:=11435}"

URL=http://$HOST:$PORT/api/generate
curl $URL -d '{
  "model": "cyberwald/sauerkrautlm-nemo-12b-instruct:q8_0",
  "prompt": "Print the number 1 to 100 in sequence. Dont print anything else!",
  "stream": false,
  "options": {
  }
}'