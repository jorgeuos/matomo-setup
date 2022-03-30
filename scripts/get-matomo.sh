#!/bin/bash

# shellcheck source=/dev/null
source ./scripts/check-env.sh

# Clone matomo repo
if [ -d "${WORKSPACE_DIR}" ]
then
    echo "${WORKSPACE_DIR}"
    tree -L 2 "${WORKSPACE_DIR}"
    echo "Seems to exist already."
    while true; do
    read -p "Do you wish to remove it? (y / n): " -r yn
    case $yn in
        [Yy]* )
            echo "Executing 'rm -rf ${WORKSPACE_DIR}'"
            rm -rf "${WORKSPACE_DIR}"
            make clone;
            break;;
        [Nn]* )
            exit;;
        * ) echo "Please answer yes or no.";;
    esac
    done
else
    make clone;
fi

