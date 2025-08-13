#!/bin/bash
# rm_mult.sh - Remove multiple folders and their contents

if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <folder1> <folder2> ..."
    exit 1
fi

for folder in "$@"; do
    if [ -d "$folder" ]; then
        rm -rf -- "$folder"
        echo "Removed: $folder"
    else
        echo "Not a directory: $folder"
    fi
done
