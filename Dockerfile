FROM mcr.microsoft.com/ccf/app/dev:2.0.8-sgx

COPY 

WORKDIR /opt/ccf/bin

ENTRYPOINT cd /opt/ccf/bin && ./scurl.sh -k --signing-cert cert