resource "aws_route_table" "app_rt" {
  vpc_id = var.vpc_id_rt

  route = {
    cidr_block = var.traffic
    gateway_id = var.igw_id   #"${aws_internet_gateway.app_gw.id}"
  }
  tags = {
     Name = "app RT"
    }
  
}