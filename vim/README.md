# Vim-mode for Emerald

## Installing

If you run [`install.sh`](install.sh), it will create the directory
`.vim/syntax` in your home directory (if it doesn't already exist),
and copy [`.vim/syntax/emerald.vim`](.vim/syntax/emerald.vim) there.

Then, to make Vim recognise `.m` files as Emerald-files, add the
following line to `.vimrc` file in your home directory (create it, if
it doesn't exist):

```
au BufNewFile,BufRead *.m setlocal ft=emerald
```
