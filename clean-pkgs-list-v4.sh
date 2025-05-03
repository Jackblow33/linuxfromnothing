#!/bin/bash

# clean-pkgs-list-v4.sh

USR=$(logname)

# Set the output file path
output_dir="/home/$USR/Downloads"
output_file="$output_dir/pkgs.list"

# Create directory
mkdir $output_dir

# Get the list of installed packages
installed_packages=$(dpkg --get-selections | cut -f1)

# Write the package names to the output file with double quotes
echo "$installed_packages" | sed 's/^/"/;s/$/"/' >> "$output_file"

echo "pkgs.list saved to $output_file"

