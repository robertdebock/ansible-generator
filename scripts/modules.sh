#!/bin/sh

echo "---" ; cat tasks/* handlers/* | grep -A1 -E '(    )?^- name:' | grep -e '^  ' | grep -v 'block' | cut -d: -f1 | sort | uniq | while read module ; do echo "- ${module}" ; done
