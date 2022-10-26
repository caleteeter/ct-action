FROM mcr.microsoft.com/ccf/app/dev:2.0.8-sgx

WORKDIR /opt/ccf/bin

ENTRYPOINT cd /opt/ccf/bin && ls && ./scurl.sh https://identitylogapp.confidential-ledger.azure.com/app/commit -k --signing-cert cert --signing-key key