resource "aws_instance" "app_server" {
  ami = var.ami_var
  instance_type = var.type_var
  subnet_id = var.app_subnet_id
  associate_public_ip_address = var.public_ip
  tags = {
    Name = "app_server"
    Department = "Data"
    Squad = "Devops team"
    Managing_Role = "Devops"
  }
}