#!/usr/bin/env bash

set -eu

mkdir -p ~/.dbt
ln -sf $(readlink -f profiles.yml) ~/.dbt/profiles.yml
code profiles.yml

pip install -r requirements.txt
