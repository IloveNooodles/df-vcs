#!/usr/bin/env bash
source path.sh

WD="${PWD}/.df/snapshots"

function commit() {
  echo "[*] Commiting changes"
  CURRENT_VERSION=$(ls $WD | wc -l)
  echo $CURRENT_VERSION
}

commit