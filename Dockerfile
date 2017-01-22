FROM debian:jessie-slim
LABEL maintainer "Alberto Mardomingo <alberto.mardomingo@gmail.com>"

RUN apt-get update && apt-get install -y rsyslog rsyslog-elasticsearch

ENV RSYSLOG_CONFIG /etc/rsyslog.conf

ADD rsyslog.conf $RSYSLOG_CONFIG
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 514 514/udp

ENTRYPOINT [ "/entrypoint.sh" ]
