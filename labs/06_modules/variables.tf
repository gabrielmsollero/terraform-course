variable "cidr_block" {
  type        = string
  description = "CIDR block for VPC"
  default     = "192.168.0.0/16"
}

variable "vpc_name" {
  type        = string
  description = "VPC name"
  default     = "my-vpc"
}
