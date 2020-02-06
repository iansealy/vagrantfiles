#!/usr/bin/env bash

apt-get -q update
apt-get -q -y upgrade

apt-get -q -y install cifs-utils openfortivpn ppp screen

echo "host = mercury.medschl.cam.ac.uk
port = 10443
username = is460
trusted-cert = b10fe4bd3be20aa44cb9f2ca7ff2605661ca09705f1c360353344eb42ae3f404" \
> /etc/openfortivpn/config
