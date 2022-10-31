#!/bin/bash

url=$(eval echo $ccfurl)

echo "Application: $1"
echo $application
echo $input_application

cd /opt/ccf/bin
content=$(./scurl.sh ${url}gov/proposals -k --signing-cert cert --signing-key key -X POST -H "Content-Type: application/json" --data-binary @set_js_app.json)
proposal=$(echo "${content}" | jq '.proposal_id')
echo "proposal=$proposal" >> $GITHUB_OUTPUT