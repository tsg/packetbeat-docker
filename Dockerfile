FROM phusion/baseimage:latest
MAINTAINER Tudor Golubenco <tudor@packetbeat.com>

RUN apt-get update
RUN apt-get -y -q install libpcap0.8 wget

ENV VERSION=1.0.0-beta2 ARCH=x86_64 EXTENSION=tar.gz
ENV FILENAME=packetbeat-${VERSION}-${ARCH}.${EXTENSION}

RUN wget https://download.elastic.co/beats/packetbeat/${FILENAME}
RUN tar zxvf ${FILENAME}

WORKDIR packetbeat-${VERSION}
ADD packetbeat.yml packetbeat.yml

CMD ["./packetbeat", "-e", "-c=packetbeat.yml"]
