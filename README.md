
```sh
# commands to create base project structure
mkdir -p {pre-deployment,deployment,post-deployment}/environment
mkdir -p deployment/environment/{us-east-1,sa-east-1}
touch deployment/environment/{us-east-1,sa-east-1}/{terraform,backend}.tfvars
touch {pre,post}-deployment/environment/{terraform,backend}.tfvars
```

```sh
cd deployment/
terraform init -backend-config=environment/us-east-1/backend.tfvars 
terraform apply -var-file=environment/us-east-1/terraform.tfvars
rm -rf .terraform
terraform init -backend-config=environment/sa-east-1/backend.tfvars 
terraform apply -var-file=environment/sa-east-1/terraform.tfvars
```