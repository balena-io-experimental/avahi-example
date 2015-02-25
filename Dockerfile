FROM resin/rpi-raspbian:jessie

RUN apt-get update && apt-get install -y avahi-daemon

RUN sed -i -e "s@#enable-dbus=yes@enable-dbus=no@" /etc/avahi/avahi-daemon.conf

ADD . /

CMD ["/bin/bash", "start.sh"]