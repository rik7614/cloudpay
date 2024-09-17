terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-cloudpay-02"
    key            = "prod/web-app/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
    dynamodb_table = "terraform-state-lock"
  }
}
