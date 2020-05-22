FROM grafana/grafana

USER root

RUN apk update && \
    apk upgrade && \
    apk add --no-cache git npm \
    && git clone https://github.com/JamesOsgood/mongodb-grafana $GF_PATHS_PLUGINS/mongodb-grafana \
    && rm -rf $GF_PATHS_PLUGINS/mongodb-grafana/.git \
    && cd $GF_PATHS_PLUGINS/mongodb-grafana \
    && npm install --silent \
    && npm cache clean --force \
    && apk del --no-cache git

USER grafana

ADD ./custom-run.sh /custom-run.sh

ENTRYPOINT ["/custom-run.sh"]