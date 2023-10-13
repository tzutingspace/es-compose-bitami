#!/bin/sh

# 定義插件路徑
PLUGIN_DIR="/opt/bitnami/elasticsearch/plugins"

echo "Starting plugin installation..."

# 檢查並安裝 analysis-icu
# if [ ! -d "$PLUGIN_DIR/analysis-icu" ]; then
#   /opt/bitnami/elasticsearch/bin/elasticsearch-plugin install analysis-icu
# fi

# 檢查並安裝 analysis-kuromoji
if [ ! -d "$PLUGIN_DIR/analysis-kuromoji" ]; then
  /opt/bitnami/elasticsearch/bin/elasticsearch-plugin install analysis-kuromoji
fi

# 檢查並安裝 analysis-nori
if [ ! -d "$PLUGIN_DIR/analysis-nori" ]; then
  /opt/bitnami/elasticsearch/bin/elasticsearch-plugin install analysis-nori
fi

# 檢查並安裝 analysis-smartcn
if [ ! -d "$PLUGIN_DIR/analysis-smartcn" ]; then
  /opt/bitnami/elasticsearch/bin/elasticsearch-plugin install analysis-smartcn
fi

# # 檢查並安裝 ingest-langdetect
# if [ ! -d "$PLUGIN_DIR/analysis-ik" ]; then
#   /opt/bitnami/elasticsearch/bin/elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v7.4.2/elasticsearch-analysis-ik-7.4.2.zip
# fi


echo "Plugin installation completed."

# # 啟動 Elasticsearch
# exec /entrypoint.sh /run.sh