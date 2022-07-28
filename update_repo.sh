#!/usr/bin/env bash	
set -e

echo Running Databricks repo update

if [[ -z $DATABRICKS_HOST ]]; then
    echo "Missing Databricks Host"
    exit 1
fi

if [[ -z $DATABRICKS_AAD_TOKEN ]]; then
    echo "Missing Databricks Token"
    exit 1
fi

if [[ -z $DATABRICKS_REPO_ID ]] ; then
  echo "Missing Databricks Repository ID"
  exit 1
fi

if [[ -z $DATABRICKS_REPO_BRANCH ]] ; then
  echo "Missing Databricks Repository Branch"
  exit 1
fi

databricks configure --host $DATABRICKS_HOST --aad-token
databricks repos update --repo-id $DATABRICKS_REPO_ID --branch $DATABRICKS_REPO_BRANCH

echo Update Sent