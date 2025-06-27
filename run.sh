#!/bin/sh
#
# This script is the user-friendly way to run the application.
# It solves file permission issues between the host and container.
#

set -e

# Get the current user's UID and GID from the host machine.
export CURRENT_UID=$(id -u)
export CURRENT_GID=$(id -g)

# Check for docker-compose command
if ! command -v docker-compose > /dev/null
then
    echo "ERROR: docker-compose could not be found. Please install it."
    exit 1
fi

echo "Starting application..."
# Run docker-compose, which will read the UID/GID variables.
# --remove-orphans: Removes containers for services no longer in the compose file.
docker-compose up --remove-orphans
