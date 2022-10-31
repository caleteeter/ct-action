FROM mcr.microsoft.com/ccf/app/dev:2.0.8-sgx

COPY cert /opt/ccf/bin/
COPY key /opt/ccf/bin/
COPY set_js_app.json /opt/ccf/bin/
COPY entrypoint.sh actions/deploy/entrypoint.sh

RUN echo "The arg value is : $input_application"

ENTRYPOINT ./actions/deploy/entrypoint.sh