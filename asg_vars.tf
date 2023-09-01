variable "asg_name" {
  type        = string
  description = "The name of the autoscaling group"
  default     = "my_asg"
}

variable "asg_min_size" {
  type        = number
  description = "The minimum size of the autoscaling group"
  default     = 0
}

variable "asg_max_size" {
  type        = number
  description = "The maximum size of the autoscaling group"
  default     = 1
}

variable "asg_desired_capacity" {
  type        = number
  description = "The desired capacity of the autoscaling group"
  default     = 1
}

variable "asg_wait_for_capacity_timeout" {
  type        = number
  description = "The wait for capacity timeout for the autoscaling group"
  default     = 0
}

variable "asg_health_check_type" {
  type        = string
  description = "The health check type for the autoscaling group"
  default     = "EC2"
}

variable "asg_instance_refresh_strategy" {
  type        = string
  description = "The instance refresh strategy for the autoscaling group"
  default     = "Rolling"
}
