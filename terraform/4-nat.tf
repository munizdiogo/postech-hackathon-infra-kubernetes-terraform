resource "aws_eip" "eip_hacka" {
  vpc = true

  tags = {
    Name = "eip_hacka"
  }
}

resource "aws_nat_gateway" "nat_hacka" {
  allocation_id = aws_eip.eip_hacka.id
  subnet_id     = aws_subnet.public-us-east-1a.id

  tags = {
    Name = "nat_hacka"
  }

  depends_on = [aws_internet_gateway.gateway_hacka]
}
