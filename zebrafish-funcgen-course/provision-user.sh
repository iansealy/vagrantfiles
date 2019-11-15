#!/usr/bin/env bash

mkdir $HOME/.conda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b
rm Miniconda3-latest-Linux-x86_64.sh
miniconda3/bin/conda init
miniconda3/bin/conda config --add channels bioconda
miniconda3/bin/conda config --add channels conda-forge
miniconda3/bin/conda update -y --all
miniconda3/bin/conda install -y star bioconductor-deseq2
