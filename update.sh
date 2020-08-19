#!/bin/bash

docker build -t suricata . &>/dev/null
docker system prune -f &>/dev/null