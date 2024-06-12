# Create AWS resources using modules
1. Create main.tf file and mention the provider and module details.
2. Create a folder modules/<module name> and add below files inside the folder
        Create provider.tf file and mention the provider details.
        Create main.tf file and mention the resources.
        Create variable.tf file and mention the variable details.
        Create .tfvars file- this file is used to define the variable values this file can have the sensitive information as well so it is not suggested to commit .tfvars file rather everyone has their own tfvars files. When we runn terraform apply command the terraform will assign the values mentioned in tfvars files to the variables in variable file.
        Create output.tf file to view the output of resource details.
        Execute commands
            terraform init
            terraform plan
            terraform apply