#!/bin/env bash

if [[ "$TRAVIS_OS_NAME" == "linux" ]]; then
    c1='/usr/bin/pacman -Syu --noconfirm'
    c2='/usr/bin/bash --norc /mnt/test/run_tests.sh'
    docker run \
        --mount type=bind,src="$(pwd)",dst=/mnt,ro \
        -u root \
        colajam93/archlinux \
        /usr/bin/bash -c "$c1 && $c2"
elif [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
      bash --norc test/run_tests.sh
fi
