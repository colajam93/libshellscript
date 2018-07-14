#!/bin/env bash

set -e

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for i in $script_dir/tests/*; do
    bash $i
done
