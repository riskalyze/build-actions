#!/usr/bin/env bash
set -ueo pipefail

# Set tags
tags="${REPO_URI}:${SHA}"
if [[ "$REF" =~ /(master|main)$ ]]; then
  tags="${tags},${REPO_URI}:latest"
fi
echo "Computed tags $tags"
echo "::set-output name=tags::$tags"

dev_tags="${DEV_REPO_URI}:${SHA}"
echo "Computed dev tags $dev_tags"
echo "::set-output name=dev-tags::$dev_tags"
