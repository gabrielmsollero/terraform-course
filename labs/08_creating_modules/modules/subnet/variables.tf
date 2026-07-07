variable "vpc_id" {
  type = string
}

variable "subnet_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "subnet_name" {
  type    = string
  default = "my-subnet"
}

variable "az" {
  type    = string
  default = "us-east-1a"
}
