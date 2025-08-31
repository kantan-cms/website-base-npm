#!/bin/bash

# Kantan CMS Build Script
# This script automates the process of fetching data from Kantan CMS,
# converting it to the appropriate format, and deploying the site.

echo "====================================================="
echo "🚀 Starting Kantan CMS build process"
echo "====================================================="

# Step 1: Fetch data from Kantan CMS API
echo "📥 Step 1/4: Fetching data from Kantan CMS..."
bash ./scripts/get-from-cms.sh
if [ $? -ne 0 ]; then
    echo "❌ Error: Failed to fetch data from CMS"
    exit 1
fi
echo "✅ Data fetching completed successfully"
echo

# Step 2: Convert JSON data to markdown files
echo "🔄 Step 2/4: Converting content to markdown..."
bash ./scripts/run-convert.sh
if [ $? -ne 0 ]; then
    echo "❌ Error: Failed to convert content"
    exit 1
fi
echo "✅ Content conversion completed successfully"
echo

# Step 3: Build the site with npm
echo "🏗️ Step 3/4: Building the site with npm..."
npm run build
if [ $? -ne 0 ]; then
    echo "❌ Error: Failed to build the site"
    exit 1
fi
echo "✅ Site build completed successfully"
echo

# Step 4: Create ZIP archive and deploy to hosting
echo "📤 Step 4/4: Packaging and deploying site..."
bash ./scripts/zip-and-export.sh
if [ $? -ne 0 ]; then
    echo "❌ Error: Failed to package and deploy site"
    exit 1
fi
echo "✅ Deployment completed successfully"
echo

echo "====================================================="
echo "✨ Build process completed successfully!"
echo "====================================================="
