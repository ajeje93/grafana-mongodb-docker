FROM grafana/grafana

USER root

ADD ./custom-run.sh /custom-run.sh

RUN apk update && \
    apk upgrade && \
    apk add --no-cache git npm \
    && git clone https://github.com/JamesOsgood/mongodb-grafana $GF_PATHS_PLUGINS/mongodb-grafana \
    && rm -rf $GF_PATHS_PLUGINS/mongodb-grafana\.git \
    && npm install --silent --prefix $GF_PATHS_PLUGINS/mongodb-grafana \
    && npm cache clean --force --prefix $GF_PATHS_PLUGINS/mongodb-grafana \
    && apk del --no-cache git \
    && chmod +x /custom-run.sh

USER grafana

ENTRYPOINT ["/custom-run.sh"]