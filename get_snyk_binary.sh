#!/bin/bash

LATEST_RELEASE=$(curl -L -s -H 'Accept: application/json' https://github.com/snyk/snyk/releases/latest)
LATEST_VERSION=$(echo $LATEST_RELEASE | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')
BINARY_URL="https://github.com/snyk/snyk/releases/download/$LATEST_VERSION/snyk-linux"

echo "Getting Snyk latest Snyk binary..."

curl -sL "$BINARY_URL" -o snyk

if [ ! -f snyk ]; then
    echo "Snyk failed to download!"
    exit 1;
else
    echo "Download successful!"
fi
