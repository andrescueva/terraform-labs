# Remote S3 backend
Create an S3 bucket and dynamo db table
Run from your local desktop:
```
terraform plan -out output --var-file=prod.tfvars
terraform apply output
```