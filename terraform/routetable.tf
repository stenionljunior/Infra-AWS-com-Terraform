resource "aws_route_table" "public_RT" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "Route_table_Desafio"
  }

}

resource "aws_route" "internet_access" {
  route_table_id         = aws_route_table.public_RT.id
  destination_cidr_block = var.publicdestCIDRblock
  gateway_id             = aws_internet_gateway.gw.id
}

resource "aws_route_table_association" "public_association" {
  subnet_id      = aws_subnet.subnet_publica.id
  route_table_id = aws_route_table.public_RT.id
}