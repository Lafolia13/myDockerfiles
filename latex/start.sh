#!/bin/bash

if [ -f ./${1} ]; then
  dir=$(dirname ${1})
  base=$(basename ${1})
  docker run --rm --name latex -itd -v "$(pwd):/work" -w "/work/${dir}" latex bash &&
  docker exec latex bash -c "if [ -f .latexmkrc ]; then cp .latexmkrc ~/; fi && latexmk -pvc ${base}" 2>&1 | egrep -A 2 -B 2 "up-to-date|^l." &
  echo "success"
else
  echo "No such file" 1>&2
fi
