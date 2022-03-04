#!/bin/sh -l

echo "Hello $1"
releases=$(curl https://phpreleases.com/api/releases/latest -header "Accept=application/json")
echo $releases
echo "::set-output name=releases::$releases"
