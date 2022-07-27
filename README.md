# GitHub action for updating a Databricks repository

This is a github action that will update a Databricks repository based of the repo ID and branch.

## Usage

```yaml
name: Update Databricks Repo GitHub Action Demo 
on:
  push:
    branches: 
      - main
  workflow_dispatch: 
jobs:
  train-model: 
    runs-on: ubuntu-latest
    steps:
    - name: Checkout
      uses: actions/checkout@v2

    - name: Update Databricks repo
      uses: ssc-dsai/databricks-update-repo-github-action@main
      with:
        # Databricks Host (should begin with https://)
        databricks-host: ${{ secrets.DATABRICKS_HOST }}
        databricks-token: ${{ secrets.DATABRICKS_TOKEN }}
        databricks-repo-id: ${{ secrets.DATABRICKS_REPO_ID }}
        databricks-repo-branch: ${{ secrets.DATABRICKS_REPO_BRANCH }}
```