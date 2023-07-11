resource "aws_instance" "ec2_hello" {
ami ="ami-0d13e3e640877b0b9"
instance_type = "t2.medium"
count = 1
key_name = "santhosh1"
vpc_security_group_ids = [aws_security_group.demosg.id]
subnet_id = aws_subnet.my-pub-sub.id
associate_public_ip_address = true
 user_data = "${file("data.sh")}"


    tags = {
      Name = "ec2_hello"
    }
}
