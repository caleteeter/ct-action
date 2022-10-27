FROM mcr.microsoft.com/ccf/app/dev:2.0.8-sgx

COPY cert /opt/ccf/bin/
COPY key /opt/ccf/bin/
COPY set_js_app.json /opt/ccf/bin/
COPY actions/deploy/entrypoint.sh /entrypoint.sh

ENTRYPOINT ./entrypoint.sh