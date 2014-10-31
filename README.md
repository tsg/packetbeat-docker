# Docker image for the Packetbeat agent

Packetbeat is an open source application monitoring and
performance management (APM) system. See 
http://packetbeat.com for details.

This runs the Packetbeat agent inside it's own container, 
but by mounting the network host it is able to see the
traffic from the other containers or from the applications
running on the hosts.

## Example run

To build:

     docker build -t packetbeat .

To run:

     docker run --net=host -d packetbeat packetbeat -e -c /etc/packetbeat/packetbeat.conf

The `--net=host` part makes it possible to sniff the traffic
from other containers.

## Thanks

* @dansowter for providing a starting point in [this ticket](https://github.com/packetbeat/packetbeat/issues/13)
* Jan Lelis for the help
* Hypoport AG for hosting #DockerHackDay :-)
