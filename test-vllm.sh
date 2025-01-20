#!/bin/bash

HOST=localhost
PORT=10200

URL=http://$HOST:$PORT/v1/chat/completions
curl -vv $URL \
    -X POST \
    -d '{"model": "VAGOsolutions/SauerkrautLM-Nemo-12b-Instruct", "messages": [ {"role": "user", "content": "Print the number 1 to 100 in sequence. Dont print anything else!"} ] }' \
    -H 'Content-Type: application/json'


