#!/bin/bash

# shellcheck disable=SC2046
SCRIPT_DIR="$(cd $(dirname "$0") || exit; pwd)"

# Put credentials in your envs
if [ ! -f "${SCRIPT_DIR}"../.env ]
then
    # shellcheck disable=SC2002
    export $(cat .env | sed 's/#.*//g' | xargs)
else
    echo "You need a .env file. Check env.sample"
fi
