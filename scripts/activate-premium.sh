#!/bin/bash

# shellcheck source=/dev/null
source ./scripts/check-env.sh

 # read the custom-plugin.json file and store it in the variable jsonlist
declare -a PLUGINS=()
while IFS='' read -r line; do PLUGINS+=("$line");done < <(jq -r '.plugins[] | keys[]' custom-plugins.json)

set -e

cd "$WORKSPACE_DIR" || exit


premium_plugins=(
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

echo "Activate Premium Plugins"
for PLUGIN in "${premium_plugins[@]}"; do
    echo "Activating ${PLUGIN}"
    ./console plugin:activate "${PLUGIN}"
done
echo "Done activating Premium plugins"
