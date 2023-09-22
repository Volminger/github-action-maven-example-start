#!/bin/bash

 

# Input: Current version (e.g., "1.2.3")

current_version="$1"

 

# Split the version into major, minor, and patch components

IFS='.' read -ra version_parts <<< "$current_version"

major="${version_parts[0]}"

minor="${version_parts[1]}"

patch="${version_parts[2]}"

 

# Increment the version based on SemVer rules

# You can customize this logic to match your versioning strategy

new_patch=$((patch + 1))

 

# Construct the new version string

new_version="$major.$minor.$new_patch"

 

# Output the new version

echo "$new_version"



