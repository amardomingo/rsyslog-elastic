#!/bin/bash -e

echo -n "Loading default config for missing values..."
RSYSLOG_CONFIG="${RSYSLOG_CONFIG:-/etc/rsyslog.conf}"
ELASTIC_HOST="${ELASTIC_HOST:-elastic}"
ELASTIC_PORT="${ELASTIC_PORT:-9200}"
ELASTIC_INDEX="${ELASTIC_INDEX:-rsyslogIndex}"
ELASTIC_TYPE="${ELASTIC_TYPE:-test-type}"
echo "done!"

echo -n "Setting values in configuration..."
sed -i "s/ELASTIC_HOST/$ELASTIC_HOST/g" $RSYSLOG_CONFIG
sed -i "s/ELASTIC_PORT/$ELASTIC_PORT/g" $RSYSLOG_CONFIG
sed -i "s/ELASTIC_INDEX/$ELASTIC_INDEX/g" $RSYSLOG_CONFIG
sed -i "s/ELASTIC_TYPE/$ELASTIC_TYPE/g" $RSYSLOG_CONFIG
echo -n "done!"


/usr/sbin/rsyslogd -f $RSYSLOG_CONFIG -n
