#!/bin/bash
set -e

REPO_URL="https://github.com/arstanton01-dotcom/Kitchen-Savvy-PRO-ProfitGuard-System.git"

echo "Starting full project setup..."

if [ ! -d ".git" ]; then
  echo "Initializing git repository..."
  git init
  git branch -M main
fi

if ! git remote | grep -q origin; then
  echo "Adding remote origin..."
  git remote add origin "$REPO_URL"
fi

echo "Staging files..."
git add .

if ! git diff --cached --quiet; then
  echo "Committing changes..."
  git commit -m "Automated full project setup commit"
else
  echo "No changes to commit."
fi

echo "Syncing with remote..."
git fetch origin || true

if git ls-remote --exit-code origin main > /dev/null 2>&1; then
  git pull origin main --rebase || true
else
  echo "Remote main branch does not exist yet."
fi

echo "Pushing to remote..."
git push -u origin main

echo "Setup complete. Repository fully synced."
