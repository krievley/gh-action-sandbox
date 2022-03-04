#!/bin/sh -l

echo "Hello $1"
releases=$(curl --url 'https://phpreleases.com/api/releases/latest')
echo $releases
echo "::set-output name=releases::$releases"