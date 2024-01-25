#!/usr/bin/env bash 

set -eu

cd '/workspaces/dbt-bootcamp-codespace/complete-dbt-bootcamp-zero-to-hero/dbtlearn'
dbt deps
dbt debug

cd '/workspaces/dbt-bootcamp-codespace/dbt_dagster_project'                                                                                                                                                            
DAGSTER_DBT_PARSE_PROJECT_ON_LOAD=1 dagster dev -h 0.0.0.0 -p 3000
