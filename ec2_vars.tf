# EC2 Variables
variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.micro"
}

# EC2 Instance Keypair
variable "instance_keypair" {
  description = "EC2 Keypair that will be associated to the instance"
  type        = string
  default     = "terraform-key"
}

variable "private_instance_count" {
  description = "EC2 Private Instance Count"
  type        = number
  default     = 1
}
