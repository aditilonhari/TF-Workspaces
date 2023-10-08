terraform {
  backend "s3" {
    bucket         = "terraform-up-and-running-state-aditi-new"
    key            = "workspaces-examples/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-up-and-running-locks-aditi-new"
    encrypt        = true

  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"
}
