###
# Inspired by: https://stackoverflow.com/a/18137056/5801152
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
current_dir := $(dir $(mkfile_path))
###

EMERALD_PATH := $(current_dir)../old-emerald/

.vim/syntax/emerald.vim: \
		emerald.vim.m4 other.vim
	./git-ready-to-deploy.sh
	EMERALD_PATH="$(EMERALD_PATH)" \
		m4 $< > $@

.PHONY: .vim/syntax/emerald.vim
