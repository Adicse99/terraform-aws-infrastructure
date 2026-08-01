resource "aws_vpc" "Proj_vpc" {
    cidr_block = var.cidr
    region = var.region

    tags = {
        "Name" = "Proj-vpc"
    }
}

resource "aws_subnet" "Proj_pub_subnet" {
    vpc_id = aws_vpc.Proj_vpc.id

    count = length(var.public_subnet)
    cidr_block = var.public_subnet[count.index]

    tags = {
      "Name" = "Proj-pub-subnet"
    }
}

resource "aws_subnet" "Proj_private_subnet" {
    vpc_id = aws_vpc.Proj_vpc.id

    count = length(var.private_subnet)
    cidr_block = var.private_subnet[count.index]

    tags = {
      "Name" = "Proj-private-subnet"
    }
}