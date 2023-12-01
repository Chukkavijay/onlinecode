terraform {
  backend "s3" {
    bucket         = "testb-cicd-tf-eks"
    key            = "jenkins/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-1"
  }
}
