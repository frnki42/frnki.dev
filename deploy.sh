#!/bin/bash

# Deploy script for frnki.dev
# This script syncs local files to VPS, avoiding permission issues

echo "🚀 Deploying frnki.dev to VPS..."

# First, ensure we're in the right directory
cd "$(dirname "$0")"

# Check if we have uncommitted changes
if [[ -n $(git status -s) ]]; then
    echo "⚠️  Warning: You have uncommitted changes:"
    git status -s
    read -p "Continue with deployment? (y/N) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Deployment cancelled."
        exit 1
    fi
fi

# Push to GitHub first
echo "📤 Pushing to GitHub..."
git push origin main

# Sync files to VPS using rsync
echo "📦 Syncing files to VPS..."
rsync -avz --delete \
    --exclude '.git' \
    --exclude '.gitignore' \
    --exclude 'deploy.sh' \
    --exclude 'fix-vps-permissions.sh' \
    ./ frnki@94.130.150.34:/var/www/frnki.dev/

echo "✅ Deployment complete!"
echo "🌐 Your site is live at https://frnki.dev"