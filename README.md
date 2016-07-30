# Elasticsearch with Shield

This Docker image contains Elasticsearch with Shield plugin and basic user for `admin` role

It's based on Elasticsearch official image (Elasticsearch 2.3).

***

## Configuration

Environment variable | Description                   | Default
-------------------- | ----------------------------- | --------
ES_USERNAME          | Admin user name      | es_admin
ES_PASSWORD          | Admin password | es_adminpassword

## Example docker run
```bash
docker run -ti -d \
	--restart=always \
	--name elasticsearch \
	-v /data/elasticsearch/data:/usr/share/elasticsearch/data \
	-e ES_USERNAME:es_admin \
	-e ES_PASSWORD:es_adminpassword \
	-p 9200:9200 -p 9300:9300 \
	voduytuan/docker-elasticsearch-shield
```