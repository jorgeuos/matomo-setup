#!/bin/bash

# shellcheck source=/dev/null
source ./scripts/check-env.sh

# Get Contrib Plugins list and store it in the array CONTRIB_PLUGINS
declare -a CONTRIB_PLUGINS=()
while IFS=''
  read -r line;
  do CONTRIB_PLUGINS+=("$line");
done < <(jq -r '.[]' contrib-plugins.json)


cd "$WORKSPACE_DIR" || exit

echo "Activate Contrib Plugins"
for PLUGIN in "${CONTRIB_PLUGINS[@]}"; do
    echo "Activating ${PLUGIN}"
    ./console plugin:activate "${PLUGIN}"
done
echo "Done activating Contrib plugins"
