resource "aws_route_table" "prvt" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.demogateway.id
  }
  tags = {
    Name = "prvt-rt"
  }
}
resource "aws_route_table_association" "rt1" {
  subnet_id      = aws_subnet.app-subnet-1.id
  route_table_id = aws_route_table.route.id
}
resource "aws_route_table_association" "rt2" {
  subnet_id      = aws_subnet.app-subnet-2.id
  route_table_id = aws_route_table.route.id
}
resource "aws_route_table_association" "rt3" {
  subnet_id      = aws_subnet.database-subnet-1.id
  route_table_id = aws_route_table.route.id
}
resource "aws_route_table_association" "rt4" {
  subnet_id      = aws_subnet.database-subnet-2.id
  route_table_id = aws_route_table.route.id
}
