#!/bin/bash

cd /opt/ccf/bin

pp=$(eval echo $proposal)
uri=$(eval echo $ccfurl)
url=${uri}gov/proposals/${pp}/ballots

content=$(./scurl.sh $1gov/proposals/${pp}/ballots -k --signing-cert cert --signing-key key -X POST -H "Content-Type: application/json" --data-binary @accept.json)
status=$(echo "$content" | jq '.state')
echo "status=$status" >> $GITHUB_OUTPUT