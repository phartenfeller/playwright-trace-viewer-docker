FROM node:19-alpine as pw-trace-dest

COPY ./assets/downloadPwGit.sh /

RUN chmod +x /downloadPwGit.sh && \
      /downloadPwGit.sh

FROM joseluisq/static-web-server:2-alpine

COPY --from=pw-trace-dest /pw/playwright/packages/playwright-core/lib/webpack/traceViewer/ /var/www/

COPY ./assets/pw-trace-config.toml /cfg/pw-trace-config.toml

ENV SERVER_CONFIG_FILE=/cfg/pw-trace-config.toml

EXPOSE 8080
