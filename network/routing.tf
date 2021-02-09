resource "aws_internet_gateway" "MyIGW" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "MyIGW"
  }
}

resource "aws_route_table" "MyPublicRoute" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.MyIGW.id
  }

  tags = {
    Name = "MyPublicRoute"
  }
}

resource "aws_route_table_association" "publicSubnetA" {
  subnet_id      = aws_subnet.publicA.id
  route_table_id = aws_route_table.MyPublicRoute.id
}

resource "aws_route_table_association" "publicSubnetB" {
  subnet_id      = aws_subnet.publicB.id
  route_table_id = aws_route_table.MyPublicRoute.id
}

resource "aws_route_table_association" "publicSubnetC" {
  subnet_id      = aws_subnet.publicC.id
  route_table_id = aws_route_table.MyPublicRoute.id
}
