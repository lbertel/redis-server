#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NOCOLOR='\033[0m'

imageName="redis-server"
imageDockerName="redis:6.0-alpine3.11"

docker build -t $imageDockerName . > /dev/null 2>&1
statusExecuteDocker=$?
if [ $statusExecuteDocker -eq "1" ]; then
  echo "The execution of the ${RED}[docker]${NOCOLOR} command failed ❌"
  exit 1
else
  echo "the ${GREEN}[$imageName]${NOCOLOR} image was created successfully ✔️"
  exit 0
fi
