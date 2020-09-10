resource "aws_network_acl" "public_NACL" {
  vpc_id     = aws_vpc.main.id
  subnet_ids = [ aws_subnet.subnet_publica.id ]

  ingress {
    protocol   = -1
    rule_no    = 200
    action     = "allow"
    cidr_block = var.publicdestCIDRblock 
    from_port  = 0
    to_port    = 0
    }
   
  egress {
    protocol   = -1
    rule_no    = 200
    action     = "allow"
    cidr_block = var.publicdestCIDRblock
    from_port  = 0
    to_port    = 0
    }
  tags = {
      Name = "Public_NACL"
    }
}