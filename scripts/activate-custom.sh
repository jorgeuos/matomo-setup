#!/bin/bash

# shellcheck source=/dev/null
source ./scripts/check-env.sh

 # read the custom-plugin.json file and store it in the variable jsonlist
declare -a PLUGINS=()
while IFS='' read -r line; do PLUGINS+=("$line");done < <(jq -r '.plugins[] | keys[]' custom-plugins.json)

set -e

cd "$WORKSPACE_DIR" || exit

echo "Activate Custom plugins"
for PLUGIN in "${PLUGINS[@]}"; do
    echo "Activating ${PLUGIN}"
    ./console plugin:activate "${PLUGIN}"
done
echo "Done activating Custom plugins"
