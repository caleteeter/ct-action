FROM mcr.microsoft.com/ccf/app/dev:2.0.8-sgx

WORKDIR /opt/ccf/bin

ENTRYPOINT ./opt/ccf/bin/scurl.sh