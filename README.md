
```sh
# commands to create base project structure
mkdir -p {pre-deployment,post-deployment}/environment
mkdir -p deployment/environment/{us-east-1,sa-east-1}
touch deployment/environment/{us-east-1,sa-east-1}/{terraform,backend}.tfvars
touch {pre,post}-deployment/environment/{terraform,backend}.tfvars
touch {deployment,post-deployment,pre-deployment}/{variables,backend,providers}.tf
```
