# Docker Container to Host you own Trace Viewer instance

Just https://trace.playwright.dev in a self-hosted docker container.

## Development

docker build -t pw-traceviewer-docker .

docker run --rm -p 8080:8080 pw-traceviewer-docker
