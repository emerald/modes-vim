#!/usr/bin/env bash

set -euo pipefail

if [ $# -lt 1 ]; then
  printf "Usage: $0 <Emerald Source Directory>" 1>&2
fi

ls "$1/Builtins/" | \
  cut -d'.' -f1 | \
  paste -d " " - - | \
  paste -d " " - - | \
  perl -pe "s/^/syn keyword Type /"
