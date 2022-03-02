#!/bin/sh

# runs 2 commands simultaneously:
npm run server --prefix $GF_PATHS_PLUGINS/mongodb-grafana & # your second application
P2=$!
/run.sh & # your first application
P1=$!
wait $P1 $P2
