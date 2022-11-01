#!/bin/bash

cp $1 /opt/ccf/bin

cat ${CERTD} > /opt/ccf/bin/cert
cat ${KEYD} > /opt/ccf/bin/key

cd /opt/ccf/bin
content=$(./scurl.sh ${CCF_URL}gov/proposals -k --signing-cert cert --signing-key key -X POST -H "Content-Type: application/json" --data-binary @set_js_app.json)
proposal=$(echo "${content}" | jq '.proposal_id')
echo "proposal=$proposal" >> $GITHUB_OUTPUT