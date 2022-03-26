#!/bin/bash

echo "*** running script: $0"

export LC_ALL=C

git status --porcelain

git diff --exit-code README.md
statusCheck=$?
echo "git diff: $statusCheck"

if [[ $statusCheck -ne 0 ]]; then
  echo "Changes detected. committing README.md."
  git add -A
  git commit -m "nightly update of README.md [skip ci]"
else
  echo "No changes detected. skipping commit."
fi
