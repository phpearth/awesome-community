#!/bin/bash

# Helper script for running Docker commands and containers

# Output documentation and help
function documentation () {
cat <<END
Custom helper commands for managing Docker

Usage: run.sh COMMAND [arg...]

Commands:'
    up           Runs docker-compose up command with extra arguments
    down         Runs docker-compose down command with extra arguments
END
}

# If arguments are passed, for example ./run.sh up
if [ $# -gt 0 ];then

    if [ "$1" == "up" ]; then
        shift 1
        docker-compose -f ./.docker/docker-compose.yml -f ./.docker/docker-compose.dev.yml up -d --force-recreate --build

    elif [ "$1" == "down" ]; then
        shift 1
        docker-compose -f ./.docker/docker-compose.yml -f ./.docker/docker-compose.dev.yml down

    else
        documentation
    fi
else
    documentation
fi
