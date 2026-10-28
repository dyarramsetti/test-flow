
#!/usr/bin/env bash

set -euo pipefail

TARGET_DIR="/home/durga"

echo "=================================="
echo " Listing files in $TARGET_DIR"
echo "=================================="

# Verify that the directory exists
if [[ ! -d "$TARGET_DIR" ]]; then
    echo "ERROR: Directory does not exist: $TARGET_DIR"
    exit 1
fi

# List all files, including hidden files, recursively
echo ""
echo "Files found:"
find "$TARGET_DIR" -type f -print

# Display the total number of files
echo ""
echo "Total files:"
find "$TARGET_DIR" -type f | wc -l

echo ""
echo "File listing completed."
