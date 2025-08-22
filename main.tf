# crate backend tfstate
terraform {
  backend "s3" {
    bucket = "shivani343"
    key = "terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "shivani343"
    
  }
}
#module for php server to call ec2
module "php" {
    source = "../modules/ec2"
    depends_on = [ module.dbb]
    ami= var.ami
    instance_type = var.instance_type
    environment = var.environment
    keypair = var.keypair
    subnet_id = var.subnet_id
    mysg = var.mysg
}
#module for db to call rds
module "dbb" {
  source = "../modules/rds"
  db_name = var.db_name
  db_username = var.db_username
  db_password = var.db_password
}