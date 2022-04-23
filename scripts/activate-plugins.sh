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

contrib_plugins=(
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

echo "Activate Contrib Plugins"
for PLUGIN in "${contrib_plugins[@]}"; do
    echo "Activating ${PLUGIN}"
    ./console plugin:activate "${PLUGIN}"
done

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

dev_plugins=(
    DataExport
    CleanPii
)
echo "Activate Plugins in development"
for PLUGIN in "${dev_plugins[@]}"; do
    echo "Activating ${PLUGIN}"
    ./console plugin:activate "${PLUGIN}"
done
