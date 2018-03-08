#!/usr/bin/env bash

# Copyright (c) 2016-2018 Oleks <oleks@oleks.info>
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

set -euo pipefail

script_dir="$(cd "$(dirname "${0}")" && pwd -P)"

install_dir=$HOME

# Install by symlinking the files here. The files may already exist, and may
# already point to here. install_file() attempts to account for these cases.

# install_file is run as a subprocess to report all errors (i.e., installations
# are deemed independent). Hence, install_file is wrapped in (), not mere {}.

function install_file() (
  file=${1}
  dest_path="${install_dir}/${file}"
  orig_path="${script_dir}/${file}"

  if [ -L "${dest_path}" ] && \
    [ "$(readlink -f "${dest_path}")" == "$(readlink -f "${orig_path}")" ]; then
    # Already installed
    exit 0
  elif [ -f "${dest_path}" ]; then
    >&2 echo \
      "ERROR: ${install_dir} already has a ${file}, ${file} not installed."
  else
    mkdir -p "$(dirname "${dest_path}")"
    ln -s "${orig_path}" "${dest_path}"
  fi
)

function install_files {
  while [ $# -gt 0 ]; do
    install_file $1
    shift
  done
}

install_files \
  .vim/syntax/emerald.vim

vimrc_line="au BufNewFile,BufRead *.m setlocal ft=emerald"
keyword="emerald"

if grep -Fqx "$vimrc_line" ~/.vimrc
then
  exit 0
else
  if grep -q "\b$keyword\b" ~/.vimrc
  then
    printf "%s\n%s\n--\n" \
      "Wanted to add $vimrc_line to ~/.vimrc," \
      "but there is already something with \"$keyword\" in there:" \
      >&2
    grep -B 3 -A 3 "\b$keyword\b" ~/.vimrc >&2
    exit 1
  fi
fi

printf "%s\n" "$vimrc_line" >> ~/.vimrc
