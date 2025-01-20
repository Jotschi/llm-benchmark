wrk.method = "POST"
wrk.body = '{"model": "VAGOsolutions/SauerkrautLM-Nemo-12b-Instruct", "messages": [ {"role": "user", "content": "Print the number 1 to 100 in sequence. Dont print anything else!"} ] }'
wrk.headers["Content-Type"] = "application/json"
wrk.headers["X-LLM-Cluster"] = "nemo"

