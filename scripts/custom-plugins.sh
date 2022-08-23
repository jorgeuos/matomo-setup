#!/bin/bash


# shellcheck source=/dev/null
source ./scripts/check-env.sh

rm -rf "${TMP_DIR}"
mkdir "${TMP_DIR}"

 # read the devices.json file and store it in the variable jsonlist
PLUGINLIST=$(jq -r '.plugins' "custom-plugins.json")
declare -a PLUGINS=()
while IFS='' read -r line; do PLUGINS+=("$line");done < <(jq -r '.plugins[] | keys[]' custom-plugins.json)

set -e

for i in "${PLUGINS[@]}"; do
    # PLUGIN=$(jq -r \'.plugins[] | \{ "$i" \} \')
    PLUGIN=$i
    echo "--############################--"
    BRANCH=$(echo "$PLUGINLIST" | jq -r '.[] | select(.'"$PLUGIN"') | .'"$i"'.branch')
    TOKEN=$(echo "$PLUGINLIST" | jq -r '.[] | select(.'"$PLUGIN"') | .'"$i"'.token')
    PROTOCOL=$(echo "$PLUGINLIST" | jq -r '.[] | select(.'"$PLUGIN"') | .'"$i"'.protocol')
    URLPREFIX=$(echo "$PLUGINLIST" | jq -r '.[] | select(.'"$PLUGIN"') | .'"$i"'."url-prefix"')
    GITURL=$(echo "$PLUGINLIST" | jq -r '.[] | select(.'"$PLUGIN"') | .'"$i"'."git-url"')
    URLSUFFIX=$(echo "$PLUGINLIST" | jq -r '.[] | select(.'"$PLUGIN"') | .'"$i"'."url-suffix"')
    ## Fix for getting env vars:
    if [[ -n $TOKEN ]]; then
        TOKEN="${!TOKEN}"
        URLPREFIX="${URLPREFIX}${TOKEN}@"
    fi;

    GITURL="${!GITURL}"
    if [[ -z $GITURL ]]; then
        GITURL="github.com"
    fi;
    echo "Fetching: "
    printf 'Plugin: %s
Branch: %s \n' \
    "${PLUGIN}" \
    "${BRANCH}"
    git clone --branch "${BRANCH}" "${PROTOCOL}${URLPREFIX}${GITURL}${URLSUFFIX}" "$TMP_DIR/${PLUGIN}"
    echo "Exclude to be tracked from working repo"
    grep -qxF "${PLUGIN}" "${WORKSPACE_DIR}"/.git/info/exclude || echo "${PLUGIN}" >> "${WORKSPACE_DIR}"/.git/info/exclude
done

# @todo: rsync
echo "Syncing:"

rsync -avz "${TMP_DIR}"/ "${WORKSPACE_DIR}"/plugins > /dev/null 2>&1



