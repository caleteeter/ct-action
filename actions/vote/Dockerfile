FROM mcr.microsoft.com/ccf/app/dev:2.0.8-sgx

COPY cert /opt/ccf/bin/
COPY key /opt/ccf/bin/
COPY accept.json /opt/ccf/bin/
COPY entrypoint.sh actions/vote/entrypoint.sh

ENTRYPOINT ./actions/vote/entrypoint.sh "test"