# main.tf file:
## Provider- 
provides the cloud provider details Ex: Cloud region. access id, client id etc
## Resource- 
provides the resource details you want to create in the cloud Ex: EC2, VPC etc
    - Use  'alias' in provider block to create resource in multiple regions in cloud.
    - No need to use alias when creating resources in multiple cloud providers.