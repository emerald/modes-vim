#!/usr/bin/env bash

set -euo pipefail

if [ $# -lt 1 ]; then
  printf "Usage: $0 <Emerald Source Directory>" 1>&2
fi

"$1/bin/getbuiltins.sh" | \
  paste -d " " - - | \
  perl -pe "s/^/syn keyword Type /"
