#!/bin/bash

/usr/share/elasticsearch/bin/shield/esusers useradd $ES_USERNAME -p $ES_PASSWORD -r admin

exec /docker-entrypoint.sh "$@"
