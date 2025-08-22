variable "ami" {
    type = string
  
}
variable "environment" {
    type = string
  
}
variable "instance_type" {
    type = string
  
}
variable "keypair" {
    type = string
  
}
variable "mysg" {
    type = string
  
}
variable "subnet_id" {
    type = string
  
}

#rds  variable
variable "db_name" {
    type = string
    default = ""
  
}
variable "db_username" {
    type = string
    default = ""
  
}
variable "db_password" {
    type = string
    default = ""
  
}
