# Docker Container to Host you own Trace Viewer instance

Just https://trace.playwright.dev in a self-hosted docker container.

```sh
docker run --rm -p 8080:8080 ghcr.io/phartenfeller/playwright-trace-viewer-docker
```

## Uses

- [Playwright](https://github.com/microsoft/playwright)
- [static-web-server](https://github.com/static-web-server/static-web-server)

## Development

docker build -t pw-traceviewer-docker .

docker run --rm -p 8080:8080 pw-traceviewer-docker
