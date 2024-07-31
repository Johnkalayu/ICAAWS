resource "aws-vpc" "vpc" {
    cidr_block = var.vpc_cidr

    tags = {
        name = var.vpc_name
        env = var.env
    }
  
}

resource "aws_internet_gateway" "int_gat" {
    vpc_id = aws_vpc.vpc_id

    tags = {
        name = 
        env = var.env
    }
  
}
resource "aws_subnet" "sub-01" {
    vpc_id = aws_vpc.vpc_id
    cidr_block = var.pub_sub01_cidr
    availability_zone = 

  
}

resource "aws_nat_gateway" "nat_0" {
    connectivity_type = "public"
    subnet_id = var.pub_sub01_cidr

    tags = {
        name = var.nat_name
        env = var.env
    }
  
}
resource "aws_nat_gateway" "nat_01" {
    connectivity_type = "private"
    subnet_id = var.pri_sub02_cidr

    tags = {
        name = var.nat_name
        env = var.env
    }
  
}

  

resource "aws_ec2" "ec2_instance" {
    ami = "ami-03972092c42e8c0ca"
    instance_type = "t2.meduim"
    key_par = var.key_par

    tags = {
        name = var.ec2_instance
        env = var.env
    }

    

  
}


  
