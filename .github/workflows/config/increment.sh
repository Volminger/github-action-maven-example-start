#!/bin/bash

# Set the current version
current_version="0.0.1"

# Split the version string into an array using '.' as the delimiter
IFS='.' read -ra version_parts <<< "$current_version"

# Extract major, minor, and patch components
major="${version_parts[0]}"
minor="${version_parts[1]}"
patch="${version_parts[2]}"

# Increment the desired component, for example, increment the patch version
new_patch=$((patch + 1))

# Construct the new version string
new_version="$major.$minor.$new_patch"

# Output the new version
echo "$new_version"

# Use the Maven Versions Plugin to update the version in the pom.xml
mvn versions:set -DnewVersion="$new_version"
