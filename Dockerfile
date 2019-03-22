ARG CONSUL_VERSION=1.4.3
ARG CONSUL_TEMPLATE_VERSION=0.20.0
FROM ubuntu:latest 
RUN apt-get update && apt-get install unzip curl vim dnsutils wget nginx ca-certificates -y --no-install-recommends
ARG CONSUL_VERSION
ARG CONSUL_TEMPLATE_VERSION
RUN wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip -O /tmp/consul.zip; unzip /tmp/consul.zip -d /usr/local/bin/; rm /tmp/consul.zip
RUN wget https://releases.hashicorp.com/consul-template/${CONSUL_TEMPLATE_VERSION}/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip -O /tmp/consul-template.zip; unzip /tmp/consul-template.zip -d /usr/local/bin; rm /tmp/consul-template.zip
RUN mkdir /etc/consul.d; mkdir /var/lib/consul; mkdir /etc/consul-template.d
