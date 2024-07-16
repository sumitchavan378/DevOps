provider "aws" {
  region = var.region
}
resource "aws_vpc" "my_vpc" {
  cidr_block = var.cidr_myvpc
  tags = {
    Name = "MyVPC"
  }
}

