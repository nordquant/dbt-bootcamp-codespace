FROM mcr.microsoft.com/devcontainers/python:1-3.12-bullseye
COPY requirements.txt /tmp/requirements.txt
USER vscode
ENV PATH=/home/vscode/.local/bin:$PATH
RUN pip install --user -r /tmp/requirements.txt
RUN mkdir -p ${HOME}/.dbt
RUN touch ${HOME}/.dbt/profiles.yml
RUN ln -s /workspaces/profiles.yml ${HOME}/.dbt/profiles.yml
USER root
