### 1st iteration:
# resource "aws_vpc" "main" {
#   cidr_block           = "10.0.0.0/16"
#   enable_dns_hostnames = true
#   enable_dns_support   = true

#   tags = {
#     Name        = "terraform-course"
#     Environment = "Lab"
#     Managed_By  = "Terraform"
#   }
# }

### 2nd iteration - resource gets replaced because CIDR has changed:
# resource "aws_vpc" "main" {
#   cidr_block           = "192.168.0.0/16"
#   enable_dns_hostnames = true
#   enable_dns_support   = true

#   tags = {
#     Name        = "terraform-course"
#     Environment = "Lab"
#     Managed_By  = "Terraform"
#   }
# }

### 3rd iteration - resource gets updated because only tags have changed:
resource "aws_vpc" "main" {
  cidr_block           = "192.168.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = "terraform-course"
    Environment = "learning-terraform"
    Managed_By  = "Terraform"
  }
}
