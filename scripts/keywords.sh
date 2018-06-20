#!/usr/bin/env bash

set -euo pipefail

if [ $# -lt 1 ]; then
  printf "Usage: $0 <Emerald Source Directory>" 1>&2
fi

"$1/bin/getkeywords.sh" | \
  paste -d " " - - | \
  paste -d " " - - | \
  perl -pe "s/^/syn keyword Keyword /"
