#!/bin/bash

# Check if a commit message is provided
if [ -z "$1" ]; then
  echo "Error: No commit message provided."
  echo "Usage: ./git-automate.sh 'Your commit message'"
  exit 1
fi

# Run Git commands
git add .
git commit -m "$1"
git push