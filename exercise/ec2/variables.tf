variable "ami_var" {
  default = "12346123456"
}
variable "type_var" {
  default = "t2.micro"
}
variable "public_ip" {
  default = "false"
  description = "change to true if you need public IP attached"
}
variable "app_subnet_id" {
  }