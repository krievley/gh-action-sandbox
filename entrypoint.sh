#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"
releases=$(curl 'https://phpreleases.com/api/releases/latest')
echo "::set-output name=releases::$releases"
