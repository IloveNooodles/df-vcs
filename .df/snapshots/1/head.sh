#!/usr/bin/env bash
WD="${PWD}/.df/snapshots"

function head(){
  rm *
  cp "$WD/$1" .
}