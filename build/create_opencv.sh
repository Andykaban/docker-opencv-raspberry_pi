#!/bin/bash

function execute_build_step () {
  local build_step="${1}"

  case "${build_step}" in 
    "prepare")
        echo ""
        ./01-prepare.sh
        ;;
    "build")
        echo "Try to compile opencv library"
        ./02-build.sh
        ;;
    "tar")
        echo "Pack opencv library to archive"
        ./03-tar.sh
        ;;
    *)
     	echo "Unknown build step ${build_step} nothing to do"
        exit 1
        ;;
  esac
}

cd /build
while [ $# -gt 0 ]
do
  execute_build_step "${1}"
  shift
done
