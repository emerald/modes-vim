# Vim-mode for Emerald

## Installing

If you run [`install.sh`](install.sh), it will:

  1. Create the directory `~/.vim/syntax`, if it doesn't already
     exist, and copy
     [`.vim/syntax/emerald.vim`](.vim/syntax/emerald.vim) there.
  2. Append the following line to `~/.vimrc`, if it isn't already
     there:
     ```
     au BufNewFile,BufRead *.m setlocal ft=emerald
     ```
