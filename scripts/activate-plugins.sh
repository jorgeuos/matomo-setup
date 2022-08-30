#!/bin/bash

# shellcheck source=/dev/null
source ./scripts/check-env.sh
source ./scripts/activate-premium.sh
source ./scripts/activate-custom.sh
source ./scripts/activate-contrib.sh

set -e

cd "$WORKSPACE_DIR" || exit

dev_plugins=(
    DataExport
    CleanPii
)
echo "Activate Plugins in development"
for PLUGIN in "${dev_plugins[@]}"; do
    echo "Activating ${PLUGIN}"
    ./console plugin:activate "${PLUGIN}"
done
