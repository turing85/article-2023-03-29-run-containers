#!/usr/bin/env bash

echo "${1:-lorem
ipsum
dolor}" > ../../input.txt
docker run --rm --volume ../../input.txt:/app/input.txt:ro run-containers "${@}"