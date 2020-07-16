#!/bin/bash

if [ -f ./${1} ]; then
  docker run --rm --name latex -itd -v "$(pwd):/work" -w "/work" latex bash &&
  docker exec latex bash -c "latexmk -pvc /work/${1}" 2>&1 | egrep -A 2 -B 2 "up-to-date|^l." &
  echo "success"
else
  echo "No such file" 1>&2
fi
