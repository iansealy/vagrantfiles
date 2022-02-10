#!/usr/bin/env bash

apt-get -q update
apt-get -q -y upgrade

apt-get -q -y install cifs-utils openfortivpn ppp

echo "host = vpn.medschl.cam.ac.uk
port = 10443
username = is460
trusted-cert = 00f76c81174a4e061030db37806b04be6848f4e147250e5667be0e07c88e8100" \
> /etc/openfortivpn/config
