#!/bin/bash

RELEASE_INFO=$(curl -s -H "Accept: application/vnd.github+json" https://api.github.com/repos/kolmafia/kolmafia/releases/latest)
          
VERSION=$(echo $RELEASE_INFO | jq -r '.name')
URL=$(echo $RELEASE_INFO | jq -r '.assets | map(select(.name | endswith("dmg"))) | .[0].browser_download_url')
SHA=($(curl -sL ${URL} | shasum -a 256))

sed -i'.backup' -e "s;version \"[0-9]*\";version \"${VERSION}\";" -e "s;sha256 \"[a-f0-9]*\";sha256 \"${SHA}\";" -e "s;url \".*dmg\";url \"${URL}\";" Casks/kolmafia.rb

echo $VERSION > version