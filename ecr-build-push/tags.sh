#!/usr/bin/env bash
set -ueo pipefail

# Set tags
tags="${REPO_URI}:${SHA}"
if [[ "$REF" =~ /(master|main)$ ]]; then
  tags="${tags},${REPO_URI}:latest"
fi
echo "Computed tags $tags"
echo "::set-output name=tags::$tags"
