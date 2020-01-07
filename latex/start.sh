#!/bin/bash

docker exec latex bash -c "latexmk -pvc /work/${1}" 2>&1 | egrep -A 2 -B 2 "up-to-date|^l."

