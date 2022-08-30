#!/bin/bash

# shellcheck source=/dev/null
source ./scripts/check-env.sh

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
echo "Done activating Contrib plugins"
