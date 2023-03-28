#!/bin/bash

if ! type jq > /dev/null; then
    # install foobar here
    echo "jq is not installed!"
    exit 1
else
    echo "jq is installed"
fi

