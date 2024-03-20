resource "aws_internet_gateway" "gateway_hacka" {
  
  vpc_id = aws_vpc.vpc_hacka.id

  tags = {
    Name = "gateway_hacka"
  }
}
