FROM node:23-alpine AS pw-trace-dest

COPY ./assets/downloadPwGit.sh /

RUN chmod +x /downloadPwGit.sh && \
      /downloadPwGit.sh

FROM joseluisq/static-web-server:2-alpine

COPY --from=pw-trace-dest /pw/playwright/packages/playwright-core/lib/vite/traceViewer/ /var/www/

COPY ./assets/pw-trace-config.toml /cfg/pw-trace-config.toml

ENV SERVER_CONFIG_FILE=/cfg/pw-trace-config.toml

LABEL org.opencontainers.image.source https://github.com/phartenfeller/playwright-trace-viewer-docker

EXPOSE 8080
