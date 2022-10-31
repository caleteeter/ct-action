#!/bin/bash

cd /opt/ccf/bin
proposal_id=$(eval echo $1)

content=$(./scurl.sh ${CCF_URL}gov/proposals/$proposal_id/ballots -k --signing-cert cert --signing-key key -X POST -H "Content-Type: application/json" --data-binary @accept.json)
status=$(echo "$content" | jq '.state')
echo "status=$status" >> $GITHUB_OUTPUT