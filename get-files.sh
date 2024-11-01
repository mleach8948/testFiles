#!/bin/bash

# Variables
REPO_URL="https://github.com/mleach8948/testFiles"
FILE_PATH="test-file-1.txt"
DESTINATION="/tmp/test-file-1.txt"

# Clone the repository (shallow clone to save time and space)
git clone --depth 1 $REPO_URL temp_repo

# Copy the file to the destination
cp temp_repo/$FILE_PATH $DESTINATION

# Clean up
rm -rf temp_repo

echo "File has been pulled and saved to $DESTINATION"
