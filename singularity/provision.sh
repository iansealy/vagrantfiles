#!/usr/bin/env bash

apt-get -q update
apt-get -q -y upgrade

apt-get -q -y install singularity-container
