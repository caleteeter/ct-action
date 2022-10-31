#!/bin/bash

cd /opt/ccf/bin

content=$(./scurl.sh $1gov/proposals/$2/ballots -k --signing-cert cert --signing-key key -X POST -H "Content-Type: application/json" --data-binary @accept.json)
status=$(echo "$content" | jq '.state')
echo "status=$status" >> $GITHUB_OUTPUT