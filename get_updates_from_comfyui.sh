#!/bin/bash

# Step 1: Define the upstream repository and branch
UPSTREAM_REPO="https://github.com/comfyanonymous/ComfyUI.git"
UPSTREAM_BRANCH="main"

# Step 2: Fetch latest changes from the upstream repository
echo "Fetching latest changes from $UPSTREAM_REPO..."
git fetch $UPSTREAM_REPO $UPSTREAM_BRANCH

# Step 3: List all files you have modified or added in your fork
echo "Listing files modified or added in your fork..."
CHANGED_FILES=$(git diff --name-only origin/main)

# Step 4: Checkout the upstream branch without committing
echo "Merging upstream changes while keeping your changes intact..."
git merge $UPSTREAM_REPO/$UPSTREAM_BRANCH --no-commit --no-ff

# Step 5: Restore your modified/added files so they are not overwritten by the merge
echo "Restoring your modified/added files..."
for file in $CHANGED_FILES; do
    git restore --staged $file
done

# Step 6: Commit the changes
echo "Committing merged changes..."
git commit -m "Merged upstream changes from $UPSTREAM_REPO and kept local modifications"

# Step 7: Push the changes to your fork
echo "Pushing changes to your fork..."
git push origin main

echo "Update completed!"
