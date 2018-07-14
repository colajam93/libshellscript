#!/bin/env bash

curl -L 'https://github.com/kward/shunit2/archive/v2.1.7.tar.gz' | tar xz
cp shunit2-2.1.7/shunit2 test
if [[ "$TRAVIS_OS_NAME" == "linux" ]]; then
    docker pull colajam93/archlinux
elif [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
    brew update
    brew install bash
fi
