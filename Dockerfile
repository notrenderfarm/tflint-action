# Container image that runs your code
FROM alpine:3.10

USER root

RUN apk add curl unzip && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /tmp
RUN curl -L "$(curl -Ls https://api.github.com/repos/terraform-linters/tflint/releases/latest | grep -o -E "https://.+?_linux_amd64.zip")" -o /tmp/tflint.zip
RUN unzip /tmp/tflint.zip
RUN rm /tmp/tflint.zip

# Code file to execute when the docker container starts up
#ENTRYPOINT ["/bin/sh", "/tmp/tflint"]
