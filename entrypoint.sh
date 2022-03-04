#!/bin/sh -l

minimum=$(curl -k --url 'https://phpreleases.com/api/releases/minimum-supported/active' | jq -r '.major, .minor')
echo "::set-output name=minimum::$minimum"
latest=$(curl -k --url 'https://phpreleases.com/api/releases/latest')
echo "::set-output name=latest::$latest"