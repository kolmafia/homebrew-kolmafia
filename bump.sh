#!/bin/bash

set -euo pipefail

REQUESTED_VERSION=${1:-}
if [[ -n "$REQUESTED_VERSION" && ! "$REQUESTED_VERSION" =~ ^[0-9]+$ ]]; then
  echo "Invalid release version: $REQUESTED_VERSION" >&2
  exit 1
fi

if [[ -n "$REQUESTED_VERSION" ]]; then
  RELEASE_ENDPOINT="releases/tags/r${REQUESTED_VERSION}"
else
  RELEASE_ENDPOINT="releases/latest"
fi

CURL_ARGS=(
  --fail
  --silent
  --show-error
  --location
  -H "Accept: application/vnd.github+json"
  -H "X-GitHub-Api-Version: 2022-11-28"
)
if [[ -n "${GITHUB_TOKEN:-}" ]]; then
  CURL_ARGS+=(-H "Authorization: Bearer ${GITHUB_TOKEN}")
fi

RELEASE_INFO=$(curl "${CURL_ARGS[@]}" \
  "https://api.github.com/repos/kolmafia/kolmafia/${RELEASE_ENDPOINT}")

VERSION=$(jq -er '
  .tag_name
  | select(type == "string" and test("^r[0-9]+$"))
  | ltrimstr("r")
' <<< "$RELEASE_INFO")
if [[ -n "$REQUESTED_VERSION" && "$VERSION" != "$REQUESTED_VERSION" ]]; then
  echo "Release version mismatch: expected $REQUESTED_VERSION, got $VERSION" >&2
  exit 1
fi

URL=$(jq -er '
  [.assets[] | select(.name | endswith(".dmg"))]
  | if length == 1 then .[0].browser_download_url
    else error("expected exactly one DMG asset")
    end
' <<< "$RELEASE_INFO")

DMG=$(mktemp)
trap 'rm -f "$DMG" Casks/kolmafia.rb.backup' EXIT
curl --fail --silent --show-error --location "$URL" --output "$DMG"
if [[ ! -s "$DMG" ]]; then
  echo "Downloaded DMG is empty" >&2
  exit 1
fi
SHA=$(shasum -a 256 "$DMG" | awk '{print $1}')

sed -i.backup \
  -e "s;^  version \".*\"$;  version \"${VERSION}\";" \
  -e "s;^  sha256 \".*\"$;  sha256 \"${SHA}\";" \
  -e "s;^  url \".*\",$;  url \"${URL}\",;" \
  Casks/kolmafia.rb

require_line() {
  awk -v expected="$1" '$0 == expected { found = 1 } END { exit !found }' Casks/kolmafia.rb
}

require_line "  version \"${VERSION}\""
require_line "  sha256 \"${SHA}\""
require_line "  url \"${URL}\","

printf '%s\n' "$VERSION" > version
