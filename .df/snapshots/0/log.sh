#!/usr/bin/env bash
dir="${PWD}/.df/snapshots"

function log() {
  
  if test -d ".df"
  then  
    local num=$(ls $dir | wc -l)

    if [ $num == 0 ]
    then
      echo "[-] No commit has been made"
      exit 0
    fi

    for directory in $(ls $dir)
    do
      cat "$dir/$directory/.commit"
      echo -e "\n"
    done
  fi

  echo "[-] Repository hasn't been initialized";
  exit 1

}