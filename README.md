# Vim-mode for Emerald

## Installing

### Manual

  1. Download the [latest release of `emerald.vim`](https://github.com/emerald/modes-vim/releases/latest),
     and place it in your `~/.vim/syntax/` directory.

     Create `~/.vim/syntax/` if it doesn't already exist.
  2. Append the following line to `~/.vimrc`, if it isn't already there:
     ```
     au BufNewFile,BufRead *.m setlocal ft=emerald
     ```
