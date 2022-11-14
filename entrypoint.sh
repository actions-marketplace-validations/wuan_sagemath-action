#!/usr/bin/env bash

set -eo pipefail
shopt -s extglob globstar nullglob

source_file="${1}"
working_directory="${2}"

if [[ -z "$source_file" ]]; then
  error "Input 'source_file' is missing."
fi

readarray -t source_file <<< "$source_file"

if [[ -n "$working_directory" ]]; then
  if [[ ! -d "$working_directory" ]]; then
    mkdir -p "$working_directory"
  fi
  cd "$working_directory"
fi

for f in "${source_file[@]}"; do
  if [[ -z "$f" ]]; then
    continue
  fi

  if [[ ! -f "$f" ]]; then
    error "File '$f' cannot be found from the directory '$PWD'."
  fi

  sage "$f"
done
