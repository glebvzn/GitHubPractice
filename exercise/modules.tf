provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "class-23a"
    key = "modules-ex/terr.tfstate"
  }
}

module "app_vpc1" {
  source = "./vpc"
  cidr_block_var = "192.168.0.0/16"
}

module "app_subnet1" {
  source = "./subnet"
  cidr_block_var = "192.168.1.0/24"
  vpc_id = module.app_vpc1.vpc_id_out
}

module "ec2" {
  source = "./ec2"
  app_subnet_id = module.app_subnet1.subnet_id_out
  public_ip = true
}

module "igw" {
  source = "./internet_gateway"
  vpc_id_igw = module.app_vpc1.vpc_id_out
}

module "rt" {
  source = "./route_table"
  vpc_id_rt = module.app_vpc1.vpc_id_out
  igw_id = module.igw.igw_id
}

module "association" {
  source = "./RT_association"
  rt_id = module.rt.rt_id
  sub_id = module.app_subnet1.subnet_id_out
}