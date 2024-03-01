#!/bin/bash

# This script is intended for use only with the "InstallCLI" SPM plugin provided by Apollo iOS

set -euo pipefall
directory=$(dirname "$0")
projectDir="$1"

if [ -z "$projectDir" ];
then
  echo "Missing project directory path." >&2
  exit 1
fi


temp_dir=$(dirname "/tmp/waster")/apollo-tmp
mkdir -p temp_dir

APOLLO_VERSION=$(sh "$directory/get-version.sh")
echo "Apollo Version - $APOLLO_VERSION"
DOWNLOAD_URL="https://www.github.com/apollographql/apollo-ios/releases/download/$APOLLO_VERSION/apollo-ios-cli.tar.gz"
echo "Download URL - $DOWNLOAD_URL"

FILE_PATH="$projectDir/apollo-ios-cli.tar.gz"
echo "File path - $FILE_PATH"
curl -L "$DOWNLOAD_URL" -o "$temp_dir/apollo-ios-cli.tar.gz"
mv ""$temp_dir/apollo-ios-cli.tar.gz" "$FILE_PATH"
tar -xvf "$FILE_PATH"
# rm -f "$FILE_PATH"