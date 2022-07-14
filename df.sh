#!/usr/bin/env bash
source init.sh

function help() {
  echo "DF - DeezFeeling Version Control System"
  echo "Available Commands: "
  echo " init       -- init current directory"
  echo " log        -- view history of commit"
  echo " commit     -- commit changes"
  echo " head [id]  -- checkout to commit id"
  echo " help       -- help command"
}

if [ "$#" != 1 ]
then
  echo "[-] Please provide correct number of argument"
  echo ""
  help
  exit 1
fi

if [ "$1" != "init" -a "$1" != "log" -a "$1" != "commit" -a "$1" != "head" ]
then
  echo "[-] Please provide correct argument"
  help
  exit 1
fi

if [ "$1" == "help" ]
then
  help
  exit 0
fi

if [ "$1" == "init" ]
then
  echo $(init)
  exit 0
fi

if [ "$1" == "commit" ]
then
  echo "[*] Comitting changes"
  test -d ""
fi