#!/usr/bin/env bash

mkdir -p $HOME/R/x86_64-pc-linux-gnu-library/4.0
R --slave -e 'update.packages(instlib=.libPaths()[1])'
R --slave -e 'install.packages("tidyverse")'
R --slave -e 'install.packages("devtools")'
R --slave -e 'install.packages("BiocManager")'
R --slave -e 'BiocManager::install()'
R --slave -e 'BiocManager::install("DESeq2")'
R --slave -e 'BiocManager::install("apeglm")'
R --slave -e 'install.packages("optparse")'
R --slave -e 'install.packages("ggrepel")'
