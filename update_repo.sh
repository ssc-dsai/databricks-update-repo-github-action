echo Running Databricks repo update
databricks configure --host $DATABRICKS_HOST --aad-token

databricks repos update --repo-id $(($DATABRICKS_REPO_ID)) --branch $(($DATABRICKS_REPO_BRANCH))

echo Done