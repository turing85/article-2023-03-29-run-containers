#!/usr/bin/env bash

[[ -d ../../out ]] || mkdir ../../out
docker run --rm --volume ../../out:/app/outdir run-containers "${@}"