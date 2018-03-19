#!/bin/bash

function execute_build_step () {
  local build_step="${1}"

  case "${build_step}" in 
    "prepare")
        ./01-prepare.sh
        ;;
    "build")
        ./02-build.sh
        ;;
    "tar")
        ./03-tar.sh
        ;;
    *)
     	echo "Unknown build step"
        exit 1
        ;;
  esac
}

cd /build
while [ $# -gt 0 ]
do
  param="${1}"
  execute_build_step "${param}"
  shift
done
