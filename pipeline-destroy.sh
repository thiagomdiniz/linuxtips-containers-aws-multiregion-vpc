#!/bin/bash

set -e

echo "INICIANDO DESTROY DO POST-DEPLOYMENT"

cd post-deployment/
# rm -rf .terraform
terraform init -backend-config=environment/backend.tfvars
terraform destroy --auto-approve -var-file=environment/terraform.tfvars


echo "FINALIANDO DESTROY DO POST-DEPLOYMENT"

cd ../


echo "INICIANDO DESTROY DA REGIAO SA-EAST-1"

cd deployment/
rm -rf .terraform
terraform init -backend-config=environment/sa-east-1/backend.tfvars
terraform destroy --auto-approve -var-file=environment/sa-east-1/terraform.tfvars

echo "FINALIZANDO DESTROY DA REGIAO SA-EAST-1"

cd ../


echo "INICIANDO DESTROY DA REGIAO US-EAST-1"

cd deployment/
rm -rf .terraform
terraform init -backend-config=environment/us-east-1/backend.tfvars
terraform destroy --auto-approve -var-file=environment/us-east-1/terraform.tfvars


echo "FINALIZANDO DESTROY DA REGIAO US-EAST-1"

cd ../


echo "INICIANDO DESTROY DO PRE-DEPLOYMENT"

cd pre-deployment/
# rm -rf .terraform
terraform init -backend-config=environment/backend.tfvars
terraform destroy --auto-approve -var-file=environment/terraform.tfvars


echo "FINALIZANDO DESTROY DO PRE-DEPLOYMENT"

cd ../
