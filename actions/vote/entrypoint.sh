#!/bin/bash

echo "$proposal"

cd /opt/ccf/bin

url="https://identitylogapp.confidential-ledger.azure.com/gov/proposals/$(proposal)/ballots"

echo "${url}"

content=$(./scurl.sh ${url} -k --signing-cert cert --signing-key key -X POST -H "Content-Type: application/json" --data-binary @accept.json)
echo "status=$content" >> $GITHUB_OUTPUT