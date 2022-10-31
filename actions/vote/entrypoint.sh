#!/bin/bash

cd /opt/ccf/bin
pp=$(eval $2)

content=$(./scurl.sh $1gov/proposals/$2/ballots -k --signing-cert cert --signing-key key -X POST -H "Content-Type: application/json" --data-binary @accept.json)
echo "$1gov/proposals/$pp/ballots"
status=$(echo "$content" | jq '.state')
echo "status=$status" >> $GITHUB_OUTPUT