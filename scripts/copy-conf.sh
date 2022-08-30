#!/bin/bash

# shellcheck source=/dev/null
source ./scripts/check-env.sh


# printenv
ORG_FILE="./config/config.ini.4.7.1.php"
COPY_FILE="$WORKSPACE_DIR/config/config.ini.php"


# Get all Variable found in the conf to an Array
declare -a VARS=()
while IFS='' read -r line;
    do
        item=$(echo "$line" | grep -a '$.*' | grep -o '".*"' | sed 's/"//g');
        if [[ "$item" ]]
            then
            VARS+=("$item");
        fi
done < $ORG_FILE

cp $ORG_FILE "$COPY_FILE"

for i in "${VARS[@]}";
    do
    eval val="$i"
    sed -i '' -e "s/$i/$val/g" "$COPY_FILE"
done


# Read through conf file and replace with Vars we need
# declare -a CONF=()
# while IFS='' read -r line;
#     do
#         CONF+=("$line");
#         for i in "${VARS[@]}";
#         do
#             if [[ $line CONTAINS $i[]]]
#             then
#             echo "wwoohoo"
#             fi
#         done
# done < ./config/config.ini.4.7.1.php
# echo "${CONF[@]}"

# cat "./config/config.ini.4.7.1.php" | grep -a '$.*' | grep -o '".*"' | sed 's/"//g'


#    | \
#   grep -o "'.*'" | \
#   sed "s/'//g" | \
#   sed "s/^/v/g"
# echo $CONF

# for l in "${CONF[@]}"
# do
#     # for envvar in
#     echo "$l"
# done
