#!/bin/bash

if [[ $1 == "testsecret" ]]; then
  echo "found variable"
else
  echo "didn't find variable"
fi

#if [[ -z $1 ]]; then 
#  echo "var found"
#else
#  echo "var not found";
#fi

echo "message=testmeout2" >> $GITHUB_OUTPUT