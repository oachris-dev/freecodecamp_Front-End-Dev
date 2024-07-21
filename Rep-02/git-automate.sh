#!/bin/bash

# Default commit message
DEFAULT_MESSAGE="Automated commit"

# Use the provided commit message if available, otherwise use the default message
COMMIT_MESSAGE=${1:-$DEFAULT_MESSAGE}

# Run Git commands
git add .github/workflows/auto-sync.yml
git commit -m "Update workflow with debug steps"
git push origin main