# Copyright VMware, Inc.
# SPDX-License-Identifier: APACHE-2.0
# https://github.com/bitnami/containers/blob/main/bitnami/elasticsearch/7/debian-11/Dockerfile

FROM docker.io/bitnami/elasticsearch:7.4.2

RUN /opt/bitnami/elasticsearch/bin/elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v7.4.2/elasticsearch-analysis-ik-7.4.2.zip

EXPOSE 9200 9300

USER 1001
ENTRYPOINT [ "/opt/bitnami/scripts/elasticsearch/entrypoint.sh" ]
CMD [ "/opt/bitnami/scripts/elasticsearch/run.sh" ]
