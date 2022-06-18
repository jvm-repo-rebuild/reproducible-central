#!/bin/bash

echo "*** running script: $0"

export LC_ALL=C

git status --porcelain

git diff --exit-code
statusCheck=$?
echo "git diff: $statusCheck"

if [[ $statusCheck -ne 0 ]]; then
  echo "Changes detected, committing."
  git add -A
  git commit -m "nightly update of content [skip ci]"
else
  echo "No changes detected, skipping commit."
fi
