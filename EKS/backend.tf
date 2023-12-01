terraform {
  backend "s3" {
    bucket         = "testb-cicd-tf-eks"
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "eks-terraform-lock"
  }
}
