variable "instance_name" {
  description = "Used to populate the Name tag. This is done in main.tf"
} 

variable "instance_type" {}

variable "subnet_ids" {
  description = "The VPC subnet the instance(s) will go in"
} 

variable "ami_id" {
  description = "The AMI to use"
}

variable "number_of_instances" {
  description = "The number of instances to make"
  default     = 1
}

variable "tags" {
  default = {
    CreatedBy = "Terraform"
  }
}
variable "availability_zone" { }
variable "user_data" { }
variable "key_name" { } 
  
variable "security_group_ids" {
   type = "list"
   default = [""]
}
