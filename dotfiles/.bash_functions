#!/usr/bin/env bash

### `cd` functions #################################################################################

function up()
{
  for (( i=0 ; i < ${1:-1} ; i++ )) ; do
    local up="$up../"
  done

  cd "$up"
}


### `find` functions ###############################################################################

function find-file()
{
  find "${2:-$PWD}" -type f -iname "*$1*"
}

function find-directory()
{
  find "${2:-$PWD}" -type d -iname "*$1*"
}

function find-path()
{
  find "${2:-$PWD}" -iwholename "*$1*"
}

function find-empty-directories()
{
  find "${1:-$PWD}" -type d -empty
}

function find-empty-files()
{
  find "${1:-$PWD}" -type f -empty
}

# shortcuts
alias ff="find-file"
alias fd="find-directory"
alias fp="find-path"


### `ls` functions #################################################################################

# `li` and `ll` for directories

function lid()
{
  li "$@" --color=always | grep "^d" --color=never
}

function lld()
{
  ll "$@" --color=always | grep "^d" --color=never
}

# `li` and `ll` for symbolic links

function lis()
{
  li "$@" --color=always | grep "^l" --color=never
}

function lls()
{
  ll "$@" --color=always | grep "^l" --color=never
}


### `sed` (and similar like functionality) functions ###############################################

function add-double-quotes()
{
  sed -e 's/^/"/g' -e 's/$/"/g'
}

function add-single-quotes()
{
  sed -e "s/^/'/g" -e "s/$/'/g"
}

function flat()
{
  paste -s -d ' '
}

function unflat()
{
  tr '[:space:]' '\n'
}

function remove-leading-whitespace()
{
  sed 's/^[[:space:]]*//g'
}

function remove-trailing-whitespace()
{
  sed 's/[[:space:]]*$//g'
}

function trim()
{
  remove-leading-whitespace | remove-trailing-whitespace
}

function squeeze()
{
  sed 's/[[:space:]]\+/ /g'
}

function delete-empty-lines()
{
  sed '/^$/d'
}

# shortcuts
alias dq="add-double-quotes"
alias sq="add-single-quotes"
