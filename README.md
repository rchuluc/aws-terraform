# aws-terraform
AWS using Terraform to provisioning infrastructure

## Generating a SSH key

```shell
ssh-keygen -f terraform-aws -t rsa
```

then move private key and copy public key to ssh folder 

```shell
mv terraform-aws ~/.ssh/ && cp terraform-aws.pub ~/.ssh/
```

then copy your `terraform-aws.pub` and add the following code to `main.tf` 

```terraform
resource "aws_key_pair" "dev-keypair" {
  key_name   = "terraform-aws"
  public_key = "ssh-rsa your_key"
}
```

## Deploy

run 

```shell 
terraform plan
```

confirm the infrastructure to be deployed and run

```shell 
terraform apply
```