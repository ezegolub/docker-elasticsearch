# Pull base image.
FROM dockerfile/elasticsearch

# Install HEAD plugin
RUN \
  cd /elasticsearch && \
  bin/plugin  -i elasticsearch/marvel/latest && \
  bin/plugin -install elasticsearch/elasticsearch-cloud-aws/2.3.0

# docker run --name es -d -p 9200:9200 -p 9300:9300 -v /data:/data ezegolub/elasticsearch /elasticsearch/bin/elasticsearch -Des.config=/data/elasticsearch.yml -DES_HEAP_SIZE=3g