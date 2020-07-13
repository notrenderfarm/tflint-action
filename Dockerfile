# Container image that runs your code
FROM ubuntu:18.04

USER root

RUN apt-get update && \
    apt-get install -y \
        curl \
        unzip && \
    apt-get -y autoremove && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /tmp
RUN curl -L "$(curl -Ls https://api.github.com/repos/terraform-linters/tflint/releases/latest | grep -o -E "https://.+?_linux_amd64.zip")" -o /tmp/tflint.zip
RUN unzip /tmp/tflint.zip
RUN rm /tmp/tflint.zip

# Code file to execute when the docker container starts up
ENTRYPOINT ["/bin/bash -c '/tmp/tflint'"]
