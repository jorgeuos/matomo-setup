#!/bin/bash
set -xe

# shellcheck source=/dev/null
source ./scripts/check-env.sh

rm -rf "${TMP_DIR}"
mkdir "${TMP_DIR}"

plugins=(
    ExtraTools
    CustomOptOut
    GroupPermissions
    InvalidateReports
    AdminNotification
    UserConsole
    QueuedTracking
    TrackerDomain
    GoogleAnalyticsImporter
    BotTracker
)
for i in "${plugins[@]}"
do
  curl -f -sS https://plugins.matomo.org/api/2.0/plugins/"$i"/download/latest?matomo="$MATOMO_VERSION" > "${TMP_DIR}"/"$i".zip
  echo "unzip \"${TMP_DIR}/$i.zip\" -d \"${TMP_DIR}\""
  unzip "${TMP_DIR}/$i.zip" -d "${TMP_DIR}"
  echo adding "$i"
  echo "Exclude to be tracked from working repo"
  grep -qxF "$i" "${WORKSPACE_DIR}"/.git/info/exclude || echo "$i" >> "${WORKSPACE_DIR}"/.git/info/exclude
done

rsync -avz "${TMP_DIR}"/ "${WORKSPACE_DIR}"/plugins

# clean up
rm -rf "${TMP_DIR:?}"/*
