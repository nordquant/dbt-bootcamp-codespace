FROM mcr.microsoft.com/devcontainers/python:1-3.12-bullseye
COPY requirements.txt /tmp/requirements.txt
USER vscode
ENV PATH=/home/vscode/.local/bin:$PATH
RUN pip install --user -r /tmp/requirements.txt
RUN mkdir -p ${HOME}/.dbt
USER root
