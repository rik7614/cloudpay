terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-cloudpay-01"
    key            = "prod/web-app/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-state-lock"
  }
}
