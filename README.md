# Vim-mode for Emerald

## Installing

### Manual

  1. Download the [latest release of `emerald.vim`](https://github.com/emerald/modes-vim/releases/download/v2019.1.1/emerald.vim),
     and place it in your `~/.vim/syntax/` directory.

     Create `~/.vim/syntax/` if it doesn't already exist.
  2. Append the following line to `~/.vimrc`, if it isn't already there:
     ```
     au BufNewFile,BufRead *.m setlocal ft=emerald
     ```

## Design and Implementation

An Emerald syntax-highlighting specification consists of the following:

  1. A list of keywords
  2. A list of built-ins
  3. A specification of what comments are like
  4. A specification of what string and character constants are like
  5. A specification to ignore casing (Emerald is case-insensitive)

The points 3-5 are covered by [`other.vim`](other.vim). As for 1-2, it
is an Emerald compiler, not this repository, which is responsible for
maintaining an up-to-date list of keywords and built-ins.

This repository makes use of the shell-scripts `bin/getkeywords.sh`
and `bin/getbuiltins.sh`, which are expected to be present in the
source directory of an Emerald compiler. These scripts are expected to
print a list of keywords and built-ins, respectively; separated, and
terminated by line breaks.

The scripts [`scripts/keywords.sh`](scripts/keywords.sh) and
[`scripts/types-from-builtins.sh`](scripts/types-from-builtins.sh)
make use of these scripts to generate vim syntax specifications
for the Emerald keywords and types, respectively.

To use these scripts, pass in a path to an emerald compiler as an
argument. For example:

```
$ ./scripts/keywords.sh ../old-emerald/
"   Keywords generated using scripts/keywords.sh
syn keyword Keyword accept and as assert
syn keyword Keyword at attached awaiting begin
...
```

### m4 Template

The overall syntax file is put together using [an m4
template](emerald.vim.m4). This is done for the following reasons:

  1. It allows to combine the components above
  2. It allows to include [the license](LICENSE) verbatim
  3. It allows to include configuration identification (e.g., git commit IDs)

### Makefile

The [`Makefile`](Makefile) does nothing extra-ordinary. It assumes
that you have an Emerald compiler in `../old-emerald/` (relative to
this repository), and runs `m4` for you.

## Development

### Building

Type `make` to build `.vim/syntax/emerald.vim`.

The [`Makefile`](Makefile) assumes that you have an Emerald compiler
in `../old-emerald/` (relative to this repository). You can override
this:

```
$ make EMERALD_PATH="<some other path>"
```

### Bumping Versions

This repository uses the Python library
[`bumpversion`](https://github.com/peritus/bumpversion) to bump
versions in a structured manner. For instance, `bumpversion` allows to
both issue a commit, add a tag, and update the
[`README.md`](README.md) at the same time.
