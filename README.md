# docker-proxy

Docker image used to proxy requests to another host.

## Test it!

```bash
docker run --rm -it -e PROXY_PASS=https://httpbin.org -p 7777:8080 ghcr.io/chneau/proxy
# open your browser at http://localhost:7777 to see the httpbin.org
```

## Typical usage

```bash
docker run --rm -it -e PROXY_PASS=https://app.posthog.com -p 7777:8080 ghcr.io/chneau/proxy
```
