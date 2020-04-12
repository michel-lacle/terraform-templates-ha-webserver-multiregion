resource "aws_subnet" "template-public" {
  cidr_block = "10.0.1.0/24"
  vpc_id = aws_vpc.template-vpc.id

  availability_zone = var.availability_zones[0]

  map_public_ip_on_launch = true

  tags = {
    Name = "template-public"
    Owner = "terraform-templates-vpc"
    Project = "terraform-templates-vpc"
  }
}

resource "aws_subnet" "template-private" {
  cidr_block = "10.0.2.0/24"
  vpc_id = aws_vpc.template-vpc.id

  availability_zone = var.availability_zones[1]

  map_public_ip_on_launch = false

  tags = {
    Name = "template-private"
    Owner = "terraform-templates-vpc"
    Project = "terraform-templates-vpc"
  }
}

# we link our public route table to our public subnet
resource "aws_route_table_association" "public_route_table_association" {

  route_table_id = aws_route_table.public_route_table.id
  subnet_id = aws_subnet.template-public.id
}


