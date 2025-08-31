#!/bin/bash


bash ./build.sh

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
echo "✨ Deploy process completed successfully!"
echo "====================================================="
