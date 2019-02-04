# Vim-mode for Emerald

## Installing

### Manual

  1. Download the [latest release of `emerald.vim`](https://github.com/emerald/modes-vim/releases/download/v2019.1.0/emerald.vim),
     and place it in your `~/.vim/syntax/` directory.

     Create `~/.vim/syntax/` if it doesn't already exist.
  2. Append the following line to `~/.vimrc`, if it isn't already there:
     ```
     au BufNewFile,BufRead *.m setlocal ft=emerald
     ```

## Development

### Bumping Versions

This repository uses the Python library
[`bumpversion`](https://github.com/peritus/bumpversion) to bump
versions in a structured manner. For instance, `bumpversion` allows to
both issue a commit, add a tag, and update the
[`README.md`](README.md) at the same time.
