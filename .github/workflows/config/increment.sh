#!/bin/bash

# Set the new version
current_version="1.2.3"  # Replace with your desired versioning logic

new_version=$((current_version + 1))


# Output the new version
echo "$new_version"

# Use the Maven Versions Plugin to update the version in the pom.xml
mvn versions:set -DnewVersion="$new_version"
