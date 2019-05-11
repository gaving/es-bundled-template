#!/bin/sh
echo "Bundling template"

curl -s -XPUT -H 'Content-Type: application/json' http://localhost:9200/_template/test -d @/template.json
