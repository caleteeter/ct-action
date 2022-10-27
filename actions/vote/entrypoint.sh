#!/bin/bash

cd /opt/ccf/bin
content=$(./scurl.sh "https://identitylogapp.confidential-ledger.azure.com/gov/proposals/4e3e8c4b8f6dd8a26eaef1e83540fa5c2d96717be266899aac14eb9c9a5cd0be/ballots" -k --signing-cert cert --signing-key key -X POST -H "Content-Type: application/json" --data-binary @accept.json)
echo "status=$content" >> $GITHUB_OUTPUT