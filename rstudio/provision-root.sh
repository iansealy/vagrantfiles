#!/usr/bin/env bash

apt-get -q update
apt-get -q -y upgrade

apt-get -q -y install ubuntu-desktop swapspace build-essential git curl screen parallel libxml2-dev libcurl4-openssl-dev

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/"
apt-get -q -y install r-base r-base-dev

wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.4.1103-amd64.deb
apt-get -q -y install ./rstudio-1.4.1103-amd64.deb
rm rstudio-1.4.1103-amd64.deb
