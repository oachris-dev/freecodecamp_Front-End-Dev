#!/bin/bash

# Navigate to the repository directory
cd ~/OneDrive/Documents/GitHub/freecodecamp_Front-End-Dev/Rep-02 || exit

# Check if there are any changes
if [[ $(git status --porcelain) ]]; then
  # Add all changes
  git add .

  # Commit changes with a timestamp
  git commit -m "Automated commit on $(date)"

  # Push changes to the remote repository
  git push origin "Rep-02"

  # Sync changes with the remote repository
  git pull --rebase
else
  echo "No changes to commit."
fi
