#!/bin/env bash

set -e

if [[ -n "$ZSH_VERSION" ]]; then  # zsh
    SHELL='zsh'
    script_dir="$( cd "$( dirname "${(%):-%N}" )" && pwd )"
else  # bash
    script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
fi

for i in $script_dir/tests/*; do
    $SHELL $i
done
