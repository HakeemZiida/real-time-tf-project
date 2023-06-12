
variable "instance_type" {
  description = "The type of the instance"

}

variable "ami_id" {
  description = "The AMI to use for the instance"
}


variable "subnet_id" {
  description = "The VPC Subnet ID to launch in"
}

# variable "security_groups" {
#   description = "List of security group IDs to associate with"
#   type        = list(string)
# }


variable "instance_name" {
  description = "Name for the instance"
}