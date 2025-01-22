# LLM Benchmark

This repo contains benchmark scripts that can be used to assess local inference engine and GPU performance.

## Scripts

```bash
# Test connection to ollama instance
./test-ollama.sh my.host.tld 11435

# Test connection to vllm instance
./test-vllm.sh my.host.tld 10200

# Test connection to tei instance
./test-tei.sh my.host.tld 10503
```

```bash
# Run ollama benchmark with concurrency of 128
./benchmark-ollama.sh my.host.tld 11435 128

# Run vLLM benchmark with concurrency of 128
./benchmark-vllm.sh my.host.tld 10200 128

# Run TEI benchmark
./benchmark-tei.sh my.host.tld 10503 128
```

## A100

### Ollama - 0.3.12 (cyberwald/sauerkrautlm-nemo-12b-instruct:q8_0) 

| Concurrency | Instances | Requests/sec  |
|-------------|-----------|---------------|
| 4           | 2         | 0.80          |
| 8           | 2         | 1.17          |
| 16          | 2         | 1.13          |
| 32          | 2         | 1.07          |
| 64          | 2         | 1.17          |
| 128         | 2         | 1.06          |
| 150         | 2         | 1.26          |


### vLLM - 0.6.3 (VAGOsolutions/SauerkrautLM-Nemo-12b-Instruct)

| Concurrency | Instances | GPU Utilization Arg | Requests/sec  |
|-------------|-----------|---------------------|---------------|
| 4           | 2         | 0.4                 | 0.67          |
| 8           | 2         | 0.4                 | 2.66          |
| 16          | 2         | 0.4                 | 2.66          |
| 32          | 2         | 0.4                 | 5.26          |
| 64          | 2         | 0.4                 | 8.52          |
| 128         | 2         | 0.4                 | 12.76         |
| 150         | 2         | 0.4                 | 14.95         |
