FROM docker.elastic.co/elasticsearch/elasticsearch:5.3.2
ADD elasticsearch.yml /usr/share/elasticsearch/config/
USER root 
RUN chown elasticsearch:elasticsearch config/elasticsearch.yml \
    && sysctl -w vm.max_map_count=262144
USER elasticsearch
