#!/bin/sh

# A script to regenerate a list of roles and their CI status.

# Where are the roles stored locally?
directory="/home/robertdb/Documents/github.com/robertdebock"

# What is the pattern of the directory names?
pattern="ansible-role-"

# Print the header of the table.
echo "|Role name|GitHub Action|GitLab CI|Version|"
echo "|---------|-------------|---------|-------|"

# Loop over the found roles.
cd ${directory} ; ls -d "${pattern}"* | while read rolename ; do

  # Find the short name, i.e. "httpd" instead of "ansible-role-httpd"
  shortrolename=$(echo "${rolename}" | sed "s/^${pattern}//")
  
  # Save the markdown per column in a variable, better readable loop.
  galaxy="[${shortrolename}](https://galaxy.ansible.com/robertdebock/${shortrolename})"
  github="[![github](https://github.com/robertdebock/${rolename}/workflows/Ansible%20Molecule/badge.svg)](https://github.com/robertdebock/${rolename}/actions)"
  gitlab="[![gitlab](https://gitlab.com/robertdebock/${rolename}/badges/master/pipeline.svg)](https://gitlab.com/robertdebock/${rolename})"
  version="[![version](https://img.shields.io/github/commits-since/robertdebock/${rolename}/latest.svg)](https://github.com/robertdebock/${rolename}/releases)"
  
  # Print the line of one role.
  echo "|${galaxy}|${github}|${gitlab}|${version}|"

done
