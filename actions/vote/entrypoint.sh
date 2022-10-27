#!/bin/bash

cd /opt/ccf/bin

pp=eval echo $proposal
url=https://identitylogapp.confidential-ledger.azure.com/gov/proposals/$pp/ballots
echo "${url}"

content=$(./scurl.sh ${url} -k --signing-cert cert --signing-key key -X POST -H "Content-Type: application/json" --data-binary @accept.json)
echo "status=$content" >> $GITHUB_OUTPUT