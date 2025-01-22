#!/bin/bash

HOST=$1
PORT=10503

URL=http://$HOST:$PORT/embed
curl -vv $URL \
    -X POST \
    -d '{"inputs": "What is Deep Learning?"}' \
    -H 'Content-Type: application/json'


