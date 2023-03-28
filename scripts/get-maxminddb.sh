#!/bin/bash

# This script is used to download the GeoIP database from MaxMind
# and store it in the misc folder.
# Tested on Mac OS X

set -e

# shellcheck source=/dev/null
source ./scripts/check-env.sh

# Check that the misc folder exists
cd "${WORKSPACE_DIR}/misc" || exit

export MAXMIND_URL="https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-City&license_key=${MAXMIND_LICENSE_KEY}&suffix=tar.gz"

curl "$MAXMIND_URL" -o /tmp/GeoLite2-City.tar.gz
cd /tmp && tar xvf /tmp/GeoLite2-City.tar.gz

echo "Chown to $SERVER_USER"
sudo chown -R "$SERVER_USER":"$SERVER_USER" /tmp/GeoLite2-City*/GeoLite2-City.mmdb

mv /tmp/GeoLite2-City*/GeoLite2-City.mmdb "${WORKSPACE_DIR}"/misc/GeoLite2-City.mmdb
rm -rf /tmp/GeoLite*

echo "GeoIP Done"

