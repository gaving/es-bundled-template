FROM elasticsearch:6.7.2 AS builder

ADD preload.sh template.json /

RUN /usr/local/bin/docker-entrypoint.sh elasticsearch -d -E path.data=/tmp/data \
    && while [[ "$(curl -s -o /dev/null -w '%{http_code}' localhost:9200)" != "200" ]]; do sleep 1; done \
    && /preload.sh

FROM elasticsearch:6.7.2
COPY --from=builder /tmp/data/ /usr/share/elasticsearch/data/
