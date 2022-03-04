#!/bin/sh -l

minimum=$(curl -k --url 'https://phpreleases.com/api/releases/minimum-supported/active' | jq -r '(.major|tostring) + "." + (.minor|tostring)')
echo "::set-output name=minimum::$minimum"
latest=$(curl -k --url 'https://phpreleases.com/api/releases/latest' | jq -r split(".") | .[0] + "." + .[1])
echo "::set-output name=latest::${latest%.*}"