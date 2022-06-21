# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.231.5/containers/alpine/.devcontainer/base.Dockerfile

# [Choice] Alpine version: 3.14, 3.13, 3.12, 3.11
# ARG VARIANT="3.15"
# FROM mcr.microsoft.com/vscode/devcontainers/base:0-alpine-${VARIANT}
ARG AZURE_CLI_VERSION="2.36.0"

FROM hashicorp/terraform

# ** [Optional] Uncomment this section to install additional packages. **
# RUN apk update \
#     && apk add --no-cache <your-package-list-here>

# RUN apk add --no-cache bash openssh ca-certificates jq curl openssl perl git zip \
#  && apk add --no-cache --virtual .build-deps gcc make openssl-dev libffi-dev musl-dev linux-headers \
#  && apk add --no-cache libintl icu-libs libc6-compat \
#  && apk add --no-cache bash-completion \
#  && update-ca-certificates



# RUN apk update \
#     && apk upgrade \
#     && apk add make bash py-pip \
#     && apk add --virtual=build gcc libffi-dev musl-dev openssl-dev python-dev \
#     && pip install azure-cli==${AZURE_CLI_VERSION} \
#     && apk del --purge build


# RUN apk update \
#     && apk upgrade \
#     && apk add make bash py-pip \
#     && apk add --virtual=build gcc libffi-dev musl-dev openssl-dev python2-dev \
#     && pip install azure-cli=="2.36.0" \
#     && apk del --purge build


RUN apk add py3-pip
RUN apk add gcc musl-dev python3-dev libffi-dev openssl-dev cargo make
RUN pip install --upgrade pip
RUN pip install azure-cli

RUN apk update \
    && apk add --no-cache bash git


# RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash