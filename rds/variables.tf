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

variable "private_subnets" {
  type = list
  description = "Subnets group to launch the RDS"
}