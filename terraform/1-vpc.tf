resource "aws_vpc" "vpc_hacka" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "vpc_hacka"
  }
}
