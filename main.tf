terraform {
  required_providers {
    aws={
        source = "hashicorp/aws"
        version = "~> 5.0"

    }
  }
}
provider "aws" {
    region= "ap-south-1"
  

}

resource "aws_instance" "terraform_instance" {
    ami = "ami-0d03cb826412c6b0f"
    instance_type = "t2.micro"

    tags = {
        Name= "terraform instance"
        Dept= "prod"
    }

}