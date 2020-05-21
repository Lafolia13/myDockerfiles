#!/bin/bash

dirs="/tmp/styles/*"
for dir in $dirs;
do
  if [ -d $dir ];
  then
    mv $dir /usr/local/texlive/texmf-local/tex/latex/
  fi
done