echo Running Databricks repo update
databricks configure --host $DATABRICKS_HOST --aad-token

ID=$(databricks repos update --repo-id $(($DATABRICKS_REPO_ID)) --branch $(($DATABRICKS_REPO_BRANCH)) | jq '.id')

echo Update Sent, ID: $ID