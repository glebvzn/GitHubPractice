resource "aws_vpc" "app-vpc" {
  cidr_block = var.cidr_block_var
  tags = {
    Name = "app_vpc"
  }
}