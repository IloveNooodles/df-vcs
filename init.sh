#!/usr/bin/env bash

function init() {
  if test -d ".df"
  then
    echo "[-] Repository already created!"
    exit 1
  fi

  if
  then
    echo "[+] Initializing an empty repository"
    mkdir ".df"
    mkdir ".df/refs"
    mkdir ".df/refs/tags"
    mkdir ".df/snapshots"
    echo "[+] repository created succesfully"
  fi
}

