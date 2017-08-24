#!/bin/bash

set -e

# Universal tests
function test {

  service=$1
  container=$2

  printf "\nTesting $service\n "

  printf "\nChecking dependencies...\n"
  for dependency in "${dependencies[@]}"
  do
    docker-compose exec $container bash -lc "which $dependency" || (printf "\n$dependency not found! Test failed."; exit 1)
  done

  printf "\n$service test complete. All tests successful.\n"
}

declare -a dependencies=(bundle gcloud)

test 2.4 web24
