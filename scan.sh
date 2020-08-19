#!/bin/bash

if [ $# -ne 1 ]; then
  echo "usage: ./scan.sh <path_to_pcaps>"
  exit
fi

docker run -it --rm -v $1:/tmp suricata