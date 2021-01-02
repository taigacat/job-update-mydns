#!/bin/sh

echo "${MYDNS_USER} / ${MYDNS_PASSWORD}"

docker build -t mydns-updator .
docker run -i -e MYDNS_USER=${MYDNS_USER} -e MYDNS_PASSWORD=${MYDNS_PASSWORD} mydns-updator
