#!/bin/bash
set -e

# shellcheck source=/dev/null
source ./scripts/check-env.sh
# shellcheck source=/dev/null
source ./scripts/check-jq.sh

rm -rf "${TMP_DIR}"
mkdir "${TMP_DIR}"

# Get Contrib Plugins list and store it in the array CONTRIB_PLUGINS
declare -a CONTRIB_PLUGINS=()
while IFS=''
  read -r line;
  do CONTRIB_PLUGINS+=("$line");
done < <(jq -r '.[]' contrib-plugins.json)


for i in "${CONTRIB_PLUGINS[@]}"
do
  echo "--############################--"
  echo "Fetching: $i"
  curl -f -sS https://plugins.matomo.org/api/2.0/plugins/"$i"/download/latest?matomo="$MATOMO_VERSION" > "${TMP_DIR}"/"$i".zip
  echo "unzip -q \"${TMP_DIR}/$i.zip\" -d \"${TMP_DIR}\""
  unzip -q "${TMP_DIR}/$i.zip" -d "${TMP_DIR}"
  echo adding "$i"
  if [ "$MATOMO_GIT" == "true" ]; then
    echo "Exclude to be tracked from working repo"
    grep -qxF "$i" "${WORKSPACE_DIR}"/.git/info/exclude || echo "$i" >> "${WORKSPACE_DIR}"/.git/info/exclude
  fi
done

echo "--############################--"

echo "Chown to $SERVER_USER"
sudo chown -R "$SERVER_USER":"$SERVER_USER" "${TMP_DIR}"

echo "Syncing to ${WORKSPACE_DIR}/plugins"
sudo rsync -avz "${TMP_DIR}"/ "${WORKSPACE_DIR}"/plugins

# clean up
echo "Cleaning up tmp dir"
rm -rf "${TMP_DIR:?}"/*

echo "Done!"
