# Docker image for the Packetbeat agent

Packetbeat is an open source application monitoring and
performance management (APM) system. See 
http://packetbeat.com for details.

This runs the Packetbeat agent inside it's own container, 
but by mounting the network host it is able to see the
traffic from the other containers or from the applications
running on the hosts.

## How to use

To build:

     docker build -t packetbeat-agent .

To run:

     docker run --net=host -d packetbeat-agent packetbeat -e -c /etc/packetbeat/packetbeat.conf

The `--net=host` part makes it possible to sniff the traffic
from other containers.

## From docker hub

You can also pull the image from Docker Hub and run it like this:

    docker pull packetbeat/packetbeat-agent
    docker run --net=host -t -i packetbeat/packetbeat-agent packetbeat -e -c /etc/packetbeat/packetbeat.conf

But note that you will need to provide your own `packetbeat.conf`.

## Thanks

* [@dansowter](https://github.com/dansowter) for providing a starting point in [this ticket](https://github.com/packetbeat/packetbeat/issues/13).
* [Jan Lelis](https://github.com/janlelis) for the help.
* Hypoport AG for hosting #DockerHackDay Berlin :-)
