#!/usr/bin/env bash

[[ -d ../../out ]] || mkdir ../../out
podman run --rm --volume ../../out:/app/outdir run-containers "${@}"