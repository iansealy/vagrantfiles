#!/usr/bin/env bash

apt-get -q update
apt-get -q -y upgrade

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

apt-get -q update
apt-get -q -y upgrade

apt-get -q -y install docker-ce
