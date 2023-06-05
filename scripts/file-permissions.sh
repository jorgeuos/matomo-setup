#!/bin/bash
set -e

# shellcheck source=/dev/null
source ./scripts/check-env.sh

sudo chown -R "$SERVER_USER":"$SERVER_USER" "${WORKSPACE_DIR}"
sudo find "${WORKSPACE_DIR}"/tmp -type f -exec chmod 644 {} \;
sudo find "${WORKSPACE_DIR}"/tmp -type d -exec chmod 755 {} \;
sudo find "${WORKSPACE_DIR}"/tmp/assets/ -type f -exec chmod 644 {} \;
sudo find "${WORKSPACE_DIR}"/tmp/assets/ -type d -exec chmod 755 {} \;
sudo find "${WORKSPACE_DIR}"/tmp/cache/ -type f -exec chmod 644 {} \;
sudo find "${WORKSPACE_DIR}"/tmp/cache/ -type d -exec chmod 755 {} \;
sudo find "${WORKSPACE_DIR}"/tmp/logs/ -type f -exec chmod 644 {} \;
sudo find "${WORKSPACE_DIR}"/tmp/logs/ -type d -exec chmod 755 {} \;
sudo find "${WORKSPACE_DIR}"/tmp/tcpdf/ -type f -exec chmod 644 {} \;
sudo find "${WORKSPACE_DIR}"/tmp/tcpdf/ -type d -exec chmod 755 {} \;
sudo find "${WORKSPACE_DIR}"/tmp/templates_c -type f -exec chmod 644 {} \;
sudo find "${WORKSPACE_DIR}"/tmp/templates_c -type d -exec chmod 755 {} \;


# sudo find ./tmp -type f -exec chmod 644 {} \;
# sudo find ./tmp -type d -exec chmod 755 {} \;
# sudo find ./tmp/assets/ -type f -exec chmod 644 {} \;
# sudo find ./tmp/assets/ -type d -exec chmod 755 {} \;
# sudo find ./tmp/cache/ -type f -exec chmod 644 {} \;
# sudo find ./tmp/cache/ -type d -exec chmod 755 {} \;
# sudo find ./tmp/logs/ -type f -exec chmod 644 {} \;
# sudo find ./tmp/logs/ -type d -exec chmod 755 {} \;
# sudo find ./tmp/tcpdf/ -type f -exec chmod 644 {} \;
# sudo find ./tmp/tcpdf/ -type d -exec chmod 755 {} \;
# sudo find ./tmp/templates_c -type f -exec chmod 644 {} \;
# sudo find ./tmp/templates_c -type d -exec chmod 755 {} \;

