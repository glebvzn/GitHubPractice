resource "aws_subnet" "app_subnet" {
  vpc_id = var.vpc_id
  cidr_block = var.cidr_block_var
  tags = {
    Name = "app_subnet"
  }
}