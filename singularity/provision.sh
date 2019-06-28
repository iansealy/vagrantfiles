#!/usr/bin/env bash

apt-get -q update
apt-get -q -y upgrade

apt-get -q -y install \
    build-essential \
    libssl-dev \
    uuid-dev \
    libgpgme11-dev \
    libseccomp-dev \
    pkg-config

export VERSION=1.12.6
curl -SsO https://dl.google.com/go/go$VERSION.linux-amd64.tar.gz
tar -C /usr/local -zxf go$VERSION.linux-amd64.tar.gz
rm go$VERSION.linux-amd64.tar.gz
export PATH="/usr/local/go/bin:$PATH"

export VERSION=3.2.0
curl -SsOL https://github.com/sylabs/singularity/releases/download/v$VERSION/singularity-$VERSION.tar.gz
tar zxf singularity-$VERSION.tar.gz
cd singularity

./mconfig
make -C builddir
make -C builddir install
