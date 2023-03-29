#!/usr/bin/env bash

echo "${1:-lorem
ipsum
dolor}" > ../../input.txt
[[ -d ../../out ]] || mkdir ../../out
docker run --rm --volume ../../input.txt:/app/input.txt:ro --volume ../../out:/app/outdir run-containers "${@}"