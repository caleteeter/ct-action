#!/bin/bash

cd /opt/ccf/bin
content=$(./scurl.sh "https://identitylogapp.confidential-ledger.azure.com/gov/proposals/$1/ballots" -k --signing-cert cert --signing-key key -X POST -H "Content-Type: application/json" --data-binary @accept.json)
echo "status=$content" >> $GITHUB_OUTPUT