#!/bin/bash
default=0.20.2
read -p "Type ElasticSearch version to download [0.20.2]: " -e es_version
es_version=${es_version:-$default}
es_tarchive="elasticsearch-$es_version.tar.gz"
es_source="http://download.elasticsearch.org/elasticsearch/elasticsearch"
curl -o files/$es_tarchive $es_source/$es_tarchive
