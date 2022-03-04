#!/bin/sh -l

releases=$(curl --url 'https://phpreleases.com/api/releases')
echo "::set-output name=releases::$releases"