#!/bin/bash
default=0.19.8
read -p "Type ElasticSearch version to download [0.19.8]: " -e es_version
es_version=${es_version:-$default}
es_tarchive="elasticsearch-$es_version.tar.gz"
es_source="http://cloud.github.com/downloads/elasticsearch/elasticsearch"
curl -o files/$es_tarchive $es_source/$es_tarchive
