#!/bin/bash

app=$1
echo $app
url=$(eval echo $ccfurl)

cp $1 /opt/ccf/bin

cd /opt/ccf/bin
content=$(./scurl.sh ${url}gov/proposals -k --signing-cert cert --signing-key key -X POST -H "Content-Type: application/json" --data-binary @set_js_app.json)
proposal=$(echo "${content}" | jq '.proposal_id')
echo "proposal=$proposal" >> $GITHUB_OUTPUT