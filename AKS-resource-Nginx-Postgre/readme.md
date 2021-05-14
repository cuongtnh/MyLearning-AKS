This folder contains yaml files to deploy some resources in AKS:
1. External loadbalancer using Nginx Ingress Controller to distribute the workload to some pods of Nginx web server
2. The Nginx deployment is connected to the database in Postgre statefulset using headless service, secret object and Azure disk for StorageClass

#Update: Use Azure Key Vault to store the secret key for Postgre via CSI driver
