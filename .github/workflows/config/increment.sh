#!/bin/bash

# Set the new version
current_version=$(cat .github/workflows/config/version.txt)
# Use echo and pipe to split the version string
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

# Use the Maven Versions Plugin to update the version in the pom.xml
versions:set -DnewVersion="$new_version"

#sed -i "s/\(\$current_version\s*=\s*\)\(.*\)/\1$new_version/" ./.github/workflows/config/version.txt

sed -i "s/$current_version/$new_version/g" ./.github/workflows/config/version.txt

