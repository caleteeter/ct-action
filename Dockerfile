FROM mcr.microsoft.com/ccf/app/dev:2.0.8-sgx

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]