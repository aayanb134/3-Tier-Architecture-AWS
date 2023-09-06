variable "alb_name" {
  description = "The name of the ALB"
  default     = "my-alb"
}

variable "alb_load_balancer_type" {
  description = "The type of the ALB (application or network)"
  default     = "application"
}

variable "alb_target_group_name_prefix" {
  description = "The prefix for the target group name"
  default     = "myec2"
}

variable "alb_target_group_backend_protocol" {
  description = "The protocol for the backend service of the target group"
  default     = "HTTP"
}

variable "alb_target_group_backend_port" {
  description = "The port for the backend service of the target group"
  default     = 80
}

variable "alb_target_group_target_type" {
  description = "The type of target for the target group"
  default     = "instance"
}

variable "alb_target_group_targets_my_target_port" {
  description = "The port for the first target in the target group"
  default     = 80
}

variable "alb_http_tcp_listeners_port" {
  description = "The port for the HTTP/TCP listeners"
  default     = 80
}

variable "alb_http_tcp_listeners_protocol" {
  description = "The protocol for the HTTP/TCP listeners"
  default     = "HTTP"
}
