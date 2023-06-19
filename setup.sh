#!/bin/bash

devtools=""

if pacman -V &> /dev/null; then
    pm=sudo pacman -Syu
fi

if dnf --version &> /dev/null; then
    pm=sudo dnf install
fi

echo "Installing dependencies"
$pm
