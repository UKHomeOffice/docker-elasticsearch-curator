#!/bin/bash - 

set -o errexit

if [[ -n ${SLEEP} ]]; then
  while true; do
    curator --config /curator/curator.yml /curator/action-file.yml
    echo "sleeping for ${SLEEP} seconds"
    sleep ${SLEEP}
  done
else
  curator --config /curator/curator.yml /curator/action-file.yml
fi
