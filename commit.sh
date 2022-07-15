#!/bin/bash

WD="${PWD}/.df/snapshots"

function commit() {

  if test -d ".df"
  then
    local message="$1"
    echo "[*] Commiting changes"
    local CURRENT_VERSION=$(ls $WD | wc -l)
    test -d "$WD/$CURRENT_VERSION" || mkdir "$WD/$CURRENT_VERSION"
    cp * "$WD/$CURRENT_VERSION"
    touch "$WD/$CURRENT_VERSION/.commit"
    echo "commitID  : $CURRENT_VERSION" >> "$WD/$CURRENT_VERSION/.commit"
    echo "author    : $USER" >> "$WD/$CURRENT_VERSION/.commit"
    echo "time      : $(date)" >> "$WD/$CURRENT_VERSION/.commit"
    echo "message   : $message" >> "$WD/$CURRENT_VERSION/.commit"
    echo "[*] Successfully commited changes with the commit-ID of $CURRENT_VERSION"
    exit 0
  fi

  echo "[-] Repository hasn't been initialized"
  exit 1
  
}