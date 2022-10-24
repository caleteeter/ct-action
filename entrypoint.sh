#!/bin/bash

if [[ -z $1 ]]; then 
  echo "var found"
else
  echo "var not found";
fi

echo "message=testmeout2" >> $GITHUB_OUTPUT