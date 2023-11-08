#!/bin/bash

# shellcheck source=/dev/null
source ./scripts/check-env.sh

# Clone matomo repo
if [ ! -f "${WORKSPACE_DIR}" ]
    then
        echo "Getting Matomo version ${MATOMO_VERSION}"
        echo "Cloneing into:"
        echo "${WORKSPACE_DIR}"
        git clone -b "${MATOMO_VERSION}" --single-branch git@github.com:matomo-org/matomo "${WORKSPACE_DIR}"
        echo "Get submodules:"
        cd "${WORKSPACE_DIR}" && git submodule update --init
        echo "All done!"
fi
