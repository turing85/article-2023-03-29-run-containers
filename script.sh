#!/usr/bin/env bash
set -e

function get_input() {
  local input
  if [[ -f input.txt ]]
  then
    input=$(cat input.txt)
  else
    input="${1:-default}"
  fi
  echo "${input}"
}

get_input "${1}" | tee outdir/output.txt
chmod 777 outdir/output.txt