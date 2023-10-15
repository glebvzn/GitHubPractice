resource "aws_internet_gateway" "app_gw" {
  vpc_id = var.vpc_id_igw

}