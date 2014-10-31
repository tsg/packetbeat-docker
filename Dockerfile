FROM phusion/baseimage:0.9.15
MAINTAINER Tudor Golubenco <tudor@packetbeat.com>

RUN apt-get update
RUN apt-get -y -q install libpcap0.8

RUN curl -L -o /tmp/packetbeat_0.3.3-1_amd64.deb https://github.com/packetbeat/packetbeat/releases/download/v0.3.3/packetbeat_0.3.3-1_amd64.deb
RUN dpkg -i /tmp/packetbeat_0.3.3-1_amd64.deb
ADD packetbeat.conf /etc/packetbeat/packetbeat.conf
