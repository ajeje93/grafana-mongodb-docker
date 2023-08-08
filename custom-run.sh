#!/bin/sh

# Starts proxy server with pm2
pm2 start "npm run server --prefix $GF_PATHS_PLUGINS/mongodb-grafana" --name mongo-proxy

# Starts your application
/run.sh &
P1=$!
wait $P1
