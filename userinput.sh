#!/usr/bin/env bash

# check for yes or no, with only capitol Y
function strongyncheck() {
  while true; do
    read -p "$1 (Y/n) " ready
    case $ready in
      [Y]* ) break;;
      [Nn]* ) break;;
      * ) echo "Please choose (Y)es or (N)o. (Y/n)";;
    esac
  done
}

function yncheck() {
    while true; do
        read -p "$1 (y/n) " yn
        case $yn in
            [Yy]* ) break;;
            [Nn]* ) break;;
            * ) echo "Please choose (Y)es or (N)o. (y/n)";;
        esac
    done
}
