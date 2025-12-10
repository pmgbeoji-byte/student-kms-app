#!/bin/bash

# Student KMS - Quick Deployment Script
# This script will deploy your app to GitHub Pages

echo "🚀 Student KMS Deployment Script"
echo "=================================="
echo ""

# Check if we're in a git repository
if [ ! -d .git ]; then
    echo "❌ Error: Not a git repository"
    echo "Please run this script from your student-kms-app folder"
    exit 1
fi

echo "📁 Checking for index.html..."

# Check if index.html exists
if [ -f "index.html" ]; then
    echo "✅ index.html found!"
else
    # Check if student-kms-app.html exists
    if [ -f "student-kms-app.html" ]; then
        echo "📝 Renaming student-kms-app.html to index.html..."
        cp student-kms-app.html index.html
        echo "✅ Done!"
    else
        echo "❌ Error: Could not find student-kms-app.html"
        echo "Please make sure the HTML file is in this directory"
        exit 1
    fi
fi

echo ""
echo "📄 Adding files to git..."
git add index.html README.md DEPLOYMENT_GUIDE.md

echo ""
echo "💾 Committing changes..."
git commit -m "Deploy Student KMS application - $(date '+%Y-%m-%d %H:%M:%S')"

echo ""
echo "☁️  Pushing to GitHub..."
git push origin main

echo ""
echo "✅ Deployment complete!"
echo ""
echo "🌐 Your app will be live in 1-2 minutes at:"
echo "   https://pmgbeoji-byte.github.io/student-kms-app/"
echo ""
echo "📋 Next steps:"
echo "   1. Go to: https://github.com/pmgbeoji-byte/student-kms-app"
echo "   2. Click Settings → Pages"
echo "   3. Verify Source is set to: Branch 'main', Folder '/ (root)'"
echo "   4. Wait 1-2 minutes for deployment"
echo "   5. Visit your live site!"
echo ""
echo "🎉 Happy deploying!"
