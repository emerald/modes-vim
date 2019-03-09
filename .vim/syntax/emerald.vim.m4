" This file was generated from an m4 template.
syscmd(`date -u --iso-8601=minutes |
  sed "s/^/\" Generation date-time (ISO 8601): /"')dnl
syscmd(`./scripts/git-identity.sh .')dnl

syscmd(`perl -pe "chomp if eof" LICENSE |
  sed "s/^/\" /"')

include(`.vim/syntax/head.vim')dnl

" Keywords and built-in types, as found in:
syscmd(`./scripts/git-identity.sh $EMERALD_PATH')dnl

syscmd(`./scripts/keywords.sh $EMERALD_PATH')dnl

syscmd(`./scripts/types-from-builtins.sh $EMERALD_PATH')dnl
