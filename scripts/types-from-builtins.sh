#!/usr/bin/env bash

set -euo pipefail

if [ $# -lt 1 ]; then
  printf "Usage: $0 <Emerald Source Directory>" 1>&2
fi

find "$1/Builtins/" -iname "*.m" \
  -exec grep -E "export.*to\s*\"Builtins\"" {} \; | \
  perl -pe "s/export\s+(.*)\s+to\s+\"Builtins\"/\1/" | \
  perl -pe "s/,\s+/\n/g" | sort | uniq | \
  paste -d " " - - | \
  perl -pe "s/^/syn keyword Type /"
