variable "allocated_storage" {
  description = "The allocated storage in gigabytes"
  type        = string
  default     = "10"
}
variable "engine" {
  description = "The database engine to use"
  type        = string
  default     = "mysql"
}

variable "engine_version" {
  description = "The engine version to use"
  type        = string
  default     = "8.0.28"
}

variable "instance_class" {
  description = "The instance type of the RDS instance"
  type        = string
  default     = "db.t2.micro"
}

variable "db_name" {
  description = "The DB name to create. If omitted, no database is created initially"
  type        = string
  default     = "mydb"
}

variable "username" {
  description = "Username for the master DB user"
  type        = string
  default     = "a_username_innit"
}

variable "password" {
  description = <<EOF
  Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file.
  The password provided will not be used if the variable create_random_password is set to true.
  EOF
  type        = string
  default     = "kenobi"
  sensitive   = true
}

variable "db_subnet_group_name" {
  type    = string
  default = "myfirstrds"
}
