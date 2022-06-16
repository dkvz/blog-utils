#!/bin/bash

# Show all the headlines for a blog post
# Requires the JSON parser "jq"

# TODO: Script smells like "bare minimum"
# Could use more formatting, showing hierarchy, etc.

if [[ -z $1 ]]; then 
  echo "Please provide an article JSON file in argument"
  exit 1
fi

jq -r ".content" $1 | grep "<h.>"