This folder contains yaml files to deploy some resources in AKS:
1. External loadbalancer using Nginx Ingress Controller to distribute the workload to some pods of Nginx web server
2. The Nginx deployment is connected to the database in Postgre statefulset using headless service, secret object and Azure disk for StorageClass
