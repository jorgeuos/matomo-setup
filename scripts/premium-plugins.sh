#!/bin/bash

# shellcheck source=/dev/null
source ./scripts/check-env.sh

rm -rf "${TMP_DIR}"
mkdir "${TMP_DIR}"

PLUGIN_LIST=(
    ActivityLog
    CustomReports
    FormAnalytics
    Funnels
    MediaAnalytics
    RollUpReporting
    SearchEngineKeywordsPerformance
    UsersFlow
    MultiChannelConversionAttribution
    HeatmapSessionRecording
    AbTesting
    MarketingCampaignsReporting
    LoginSaml
    WhiteLabel
)

for i in "${PLUGIN_LIST[@]}";
do
    echo "Curl get $i"
    curl -f -sS --data "access_token=${MATOMO_LICENSE}" https://plugins.matomo.org/api/2.0/plugins/"$i"/download/latest?matomo="$MATOMO_VERSION" > "${TMP_DIR}"/"$i".zip
    echo "Unzip $i"
    unzip -o "${TMP_DIR}"/"$i".zip -d "${WORKSPACE_DIR}"/plugins 2> /dev/null
    echo "Exclude to be tracked from working repo"
    grep -qxF "$i" "${WORKSPACE_DIR}"/.git/info/exclude || echo "$i" >> "${WORKSPACE_DIR}"/.git/info/exclude
done

# clean up
rm -rf "${TMP_DIR}"
