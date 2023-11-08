#!/bin/bash


# Create DB

# shellcheck source=/dev/null
source ./scripts/check-env.sh

# Create DB
echo "Creating DB"
COLLATE="/*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */"
if mysql -u "${DB_ROOT}" -p"${DB_ROOT_PASSWORD}" -e "CREATE DATABASE \`${MATOMO_DATABASE}\` ${COLLATE};"
then
    echo "DB created"
else
    echo "DB already exists"
    # exit 1
fi

# Create DB user
echo "Creating DB user"
if mysql -u "${DB_ROOT}" -p"${DB_ROOT_PASSWORD}" -e "CREATE USER IF NOT EXISTS '${MATOMO_USERNAME}'@'${MATOMO_HOST}' IDENTIFIED BY '${MATOMO_PASSWORD}';"
then
    echo "User created"
else
    echo "User already exists"
fi

# Grant privileges
echo "Granting privileges"
if mysql -u "${DB_ROOT}" -p"${DB_ROOT_PASSWORD}" -e "GRANT ALL PRIVILEGES ON ${MATOMO_DATABASE}.* TO '${MATOMO_USERNAME}'@'${MATOMO_HOST}';"
then
    echo "Privileges granted"
else
    echo "Privileges already granted"
    exit 1
fi

