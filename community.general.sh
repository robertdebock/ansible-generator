#!/bin/sh

if [ -f requirements.yml ] ; then
  if ! grep 'collections:' requirements.yml > /dev/null ; then
    echo "Adding collections header to requirements."
    echo "collections:" >> requirements.yml
  fi
  if ! grep -- '  - name: community.general' requirements.yml > /dev/null ; then
    echo "Adding community.general to requirement."
    echo "  - name: community.general" >> requirements.yml
  fi
fi

