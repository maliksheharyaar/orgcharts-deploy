#!/bin/bash

# Navigate to dist directory
cd "$(dirname "$0")"

echo "================================================"
echo "GitHub Pages Deployment Script"
echo "================================================"
echo ""

# Check if this is already a git repo
if [ -d ".git" ]; then
    echo "Git repository already exists in dist folder."
    echo "Cleaning up old repository..."
    rm -rf .git
fi

# Initialize git repository
echo "Initializing git repository in dist folder..."
git init

# Add all files
echo "Adding all built files..."
git add .

# Commit
echo "Creating initial commit..."
git commit -m "Deploy: OrgChart Builder to GitHub Pages"

# Prompt for GitHub repository URL
echo ""
echo "Please create a new repository on GitHub for deployment."
echo "Then enter the repository URL below:"
echo "Example: https://github.com/maliksheharyaar/orgcharts-deploy.git"
echo ""
read -p "Enter GitHub repository URL: " REPO_URL

# Add remote
echo ""
echo "Adding remote origin..."
git remote add origin "$REPO_URL"

# Rename branch to main
echo "Setting branch to main..."
git branch -M main

# Push to GitHub
echo "Pushing to GitHub..."
git push -u origin main

echo ""
echo "================================================"
echo "✅ Deployment repository created successfully!"
echo "================================================"
echo ""
echo "Next steps:"
echo "1. Go to your GitHub repository settings"
echo "2. Navigate to Pages section"
echo "3. Set source to: Deploy from branch 'main'"
echo "4. Your site will be available at:"
echo "   https://maliksheharyaar.github.io/[repo-name]/"
echo ""
