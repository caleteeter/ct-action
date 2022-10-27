#!/bin/bash

cd /opt/ccf/bin

proposal-id=$1
url="https://identitylogapp.confidential-ledger.azure.com/gov/proposals/${proposal-id}/ballots"

content=$(./scurl.sh ${url} -k --signing-cert cert --signing-key key -X POST -H "Content-Type: application/json" --data-binary @accept.json)
echo "status=$content" >> $GITHUB_OUTPUT