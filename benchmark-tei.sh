#!/bin/bash

HOST=localhost
PORT=10200

URL=http://$HOST:$PORT/v1/chat/completions

#    -c, --connections <N>  Connections to keep open   
#    -d, --duration    <T>  Duration of test           
#    -t, --threads     <N>  Number of threads to use   
#                                                      
#    -s, --script      <S>  Load Lua script file       
#    -H, --header      <H>  Add header to request      
#        --latency          Print latency statistics   
#        --timeout     <T>  Socket/request timeout     
#    -v, --version          Print version details  

wrk $URL -s wrk-tei-post.lua --timeout 8000 --latency -t $1 -c $1 -d 30s
