#!/bin/bash

# Array of submodule URL and path pairs
declare -a submodules=(

    "https://the.path/to/git.git submodules/category/to/OSINT"
)

echo "Adding $((${#submodules[@]})) submodules..."
echo "Ensure target directories are empty or don't exist."
echo "Press Enter to continue or Ctrl+C to abort."
read

failed=0
for pair in "${submodules[@]}"; do
    url=$(echo $pair | cut -d' ' -f1)
    path=$(echo $pair | cut -d' ' -f2)
    
    echo "Adding $path..."
    if git submodule add "$url" "$path"; then
        echo "✓ $path added successfully"
    else
        echo "✗ Failed to add $path"
        ((failed++))
    fi
done

if [ $failed -eq 0 ]; then
    echo "All submodules added successfully!"
    echo "Finalizing..."
    git add .gitmodules
    git commit -m "Add back all submodules from .gitmodules"
    git submodule update --init --recursive
    echo "Done! Run 'git submodule status' to verify."
else
    echo "Failed to add $failed submodules. Check errors above."
    echo "Run 'git status' to see what's staged and fix manually."
fi
