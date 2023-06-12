variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_blocks" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnet_cidr_blocks" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
}

variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b", "us-west-2c"]
}



# ec2 module inputs
variable "instance_type" {
  description = "The type of the instance"

}

variable "ami_id" {
  description = "The AMI to use for the instance"
}


# rds variables
variable "allocated_storage" {
  description = "The amount of storage to allocate to the database (in GB)"
  type        = number
  default     = 10
}

variable "db_name" {
  description = "The name of the database"
  type        = string
  default     = "mydb"
}

variable "engine" {
  description = "The database engine type"
  type        = string
  default     = "mysql"
}

variable "engine_version" {
  description = "The database engine version"
  type        = string
  default     = "5.7"
}

variable "instance_class" {
  description = "The RDS instance type"
  type        = string
  default     = "db.t3.micro"
}

variable "username" {
  description = "The master username for the database"
  type        = string
  default     = "foo"
}

variable "password" {
  description = "The master password for the database"
  type        = string
  default     = "foobarbaz"
}

variable "parameter_group_name" {
  description = "The name of the parameter group to associate with the database"
  type        = string
  default     = "default.mysql5.7"
}

variable "skip_final_snapshot" {
  description = "Whether to skip the creation of a final snapshot when the database instance is deleted"
  type        = bool
  default     = true
}

# rds variables
