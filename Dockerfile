FROM mcr.microsoft.com/ccf/app/dev:2.0.8-sgx

COPY cert /opt/ccf/bin/
COPY key /opt/ccf/bin/
COPY set_js_app.json /opt/ccf/bin/

ENTRYPOINT echo proposal-id=$(./opt/ccf/bin/scurl.sh https://identitylogapp.confidential-ledger.azure.com/gov/proposals -k --signing-cert cert.pem --signing-key key.pem -X POST -H "Content-Type: application/json" --data-binary @set_js_app.json | jq .proposal_id)