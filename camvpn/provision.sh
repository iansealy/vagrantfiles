#!/usr/bin/env bash

apt-get -q update
apt-get -q -y upgrade

apt-get -q -y install cifs-utils openfortivpn ppp screen

echo "host = mercury.medschl.cam.ac.uk
port = 10443
username = is460
trusted-cert = 4ff1710840fa01088254d5955ae3a316dacf01c59e81ddf3f5a2214cfdc48ed9" \
> /etc/openfortivpn/config
