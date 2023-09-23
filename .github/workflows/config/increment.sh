#!/bin/bash

# Set the new version
new_version=1.2.3  # Replace with your desired versioning logic

# Use the Maven Versions Plugin to update the version in the pom.xml
mvn versions:set -DnewVersion=$new_version