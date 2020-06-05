resource "aws_instance" "PublicEC2" {
  count = length(var.public_subnet_cidr)
  ami =   var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.ec2_public_security_group.id]
  subnet_id = aws_subnet.public_subnets[count.index].id
  key_name = "ec2demo_1"
  tags = {
    Name = format("PublicEC2-%d", count.index+1)
  }
  depends_on = [aws_vpc.mainvpc,aws_subnet.public_subnets,aws_security_group.ec2_public_security_group]
}

resource "aws_instance" "PrivateEC2" {
  count = length(var.private_subnet_cidr)
  ami =   var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.ec2_private_security_group.id]

  subnet_id = aws_subnet.private_subnets[count.index].id
  key_name = "ec2demo_1"
  tags = {
    Name = format("PrivateEC2-%d", count.index+1)
  }
  depends_on = [aws_vpc.mainvpc,aws_subnet.private_subnets,aws_security_group.ec2_private_security_group]
}