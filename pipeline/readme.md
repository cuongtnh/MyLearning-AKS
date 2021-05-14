There are some workflow to create pipeline:

- Jenkins file is to create the pipeline in order to trigger the Terraform file stored in Github which will be deploy some resources in AKS
- Azure-pipeline.yaml is to create the pipeline in using Azure Devops to build and test the code
- Github-ci-workflow.yml is to create the pipiline in using GitHub Actions to build and push the artifact to Docker Hub
