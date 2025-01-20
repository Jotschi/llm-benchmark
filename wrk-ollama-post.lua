wrk.method = "POST"
wrk.body = '{ "model": "cyberwald/sauerkrautlm-nemo-12b-instruct:q8_0", "prompt": "Print the number 1 to 100 in sequence. Dont print anything else!", "stream": false }'
wrk.headers["Content-Type"] = "application/json"
wrk.headers["X-LLM-Cluster"] = "test"

