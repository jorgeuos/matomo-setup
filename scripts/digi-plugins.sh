#!/bin/bash

# shellcheck source=/dev/null
source ./scripts/check-env.sh

rm -rf "${TMP_DIR}"
mkdir "${TMP_DIR}"

git clone --depth 1 --branch v4.0.16 --single-branch https://"${GITHUB_DIGI}"/UserFeedback.git "${WORKSPACE_DIR}"/plugins/UserFeedback
git clone --depth 1 --branch v0.0.10 --single-branch https://"${GITHUB_DIGI}"/DBHealth.git "${WORKSPACE_DIR}"/plugins/DBHealth
git clone --depth 1 --branch 4.0.0 --single-branch https://github.com/tomper00/plugin-GroupPermissions "${WORKSPACE_DIR}"/plugins/GroupPermissions
git clone --depth 1 --branch v0.2.7 --single-branch https://oauth2:"${SDG_OAUTH}"@"${GITLAB_DIGI}"/digi-matomo/plugins/SingleDigitalGateway.git "${WORKSPACE_DIR}"/plugins/SingleDigitalGateway

cd "${WORKSPACE_DIR}"/plugins/SingleDigitalGateway && composer install

