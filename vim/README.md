# Vim-mode for Emerald

## Install

If you run `install.sh` it will create the directory `.vim/syntax` in
your home directory and copy
[`.vim/syntax/emerald.vim`](.vim/syntax/emerald.vim) there.

Then, to make Vim recognise `.m` files as Emerald-file, add the
following line to the `.vimrc` file in your home directory:

```
au BufNewFile,BufRead *.m setlocal ft=emerald
```
