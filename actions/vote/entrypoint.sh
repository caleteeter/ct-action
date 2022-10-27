#!/bin/bash

cd /opt/ccf/bin

pp=$(eval echo $proposal)
url=https://identitylogapp.confidential-ledger.azure.com/gov/proposals/${pp}/ballots

content=$(./scurl.sh ${url} -k --signing-cert cert --signing-key key -X POST -H "Content-Type: application/json" --data-binary @accept.json)
status=$(echo "$content" | jq '.state')
echo "status=$status" >> $GITHUB_OUTPUT