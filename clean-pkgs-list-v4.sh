#!/bin/bash

# clean-pkgs-list-v4.sh

# Set the output file path
output_file="/home/jack/Downloads/pkgs.list"

# Get the list of installed packages
installed_packages=$(dpkg --get-selections | cut -f1)

# Write the package names to the output file with double quotes
echo "$installed_packages" | sed 's/^/"/;s/$/"/' >> "$output_file"

echo "pkgs.list saved to $output_file"

