FROM resin/rpi-raspbian:jessie

RUN apt-get update && apt-get install -y avahi-daemon

ADD . /

CMD ["/bin/bash", "start.sh"]