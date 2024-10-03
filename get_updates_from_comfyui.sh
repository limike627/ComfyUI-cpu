#!/bin/bash

# Step 1: Define the upstream repository and branch
UPSTREAM_REPO="comfyanonymous/ComfyUI"
UPSTREAM_REMOTE="comfyui"
UPSTREAM_BRANCH="master"  # Likely 'master' instead of 'main'

# Check if the comfyui remote already exists, if not, add it
if git remote | grep -q $UPSTREAM_REMOTE; then
    echo "Upstream remote '$UPSTREAM_REMOTE' already exists."
else
    echo "Adding upstream remote '$UPSTREAM_REMOTE'..."
    git remote add $UPSTREAM_REMOTE git@github.com:$UPSTREAM_REPO.git
fi

# Step 2: Fetch the latest changes from the upstream repository
echo "Fetching latest changes from $UPSTREAM_REMOTE..."
git fetch $UPSTREAM_REMOTE $UPSTREAM_BRANCH

# Step 3: List all files you have modified or added in your fork
echo "Listing files modified or added in your fork..."
CHANGED_FILES=$(git diff --name-only comfyui-cpu/master)

# Step 4: Merge upstream changes without committing, keeping local changes
echo "Merging upstream changes while keeping your changes intact..."
git merge $UPSTREAM_REMOTE/$UPSTREAM_BRANCH --no-commit --no-ff

# Step 5: Restore your modified/added files so they are not overwritten by the merge
echo "Restoring your modified/added files..."
for file in $CHANGED_FILES; do
    git restore --staged $file
done

# Step 6: Commit the changes if there are any to commit
if git diff --cached --quiet; then
    echo "No changes to commit."
else
    echo "Committing merged changes..."
    git commit -m "Merged upstream changes from $UPSTREAM_REMOTE and kept local modifications"
fi

# Step 7: Push the changes to your fork
echo "Pushing changes to your fork (comfyui-cpu)..."
git push comfyui-cpu master  # Push to 'master', change if you're using another branch

echo "Update completed!"
