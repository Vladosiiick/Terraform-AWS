variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "db_username" {
  description = "Username for RDS MySQL"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Password for RDS MySQL"
  type        = string
  default     = "password"
}
