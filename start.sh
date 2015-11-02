#!/bin/bash
export PASSWD=${PASSWD:=root}
echo "root:$PASSWD" | chpasswd

set -e

# Set host-name and enable-dbus
sed -i -e "s@#enable-dbus=yes@enable-dbus=no@" -e "s@#host-name=foo@host-name=$(echo $RESIN_DEVICE_UUID | cut -c1-7)@" /etc/avahi/avahi-daemon.conf

systemctl stop avahi-daemon &&

avahi-daemon