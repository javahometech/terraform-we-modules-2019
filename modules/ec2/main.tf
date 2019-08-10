resource "aws_instance" "web" {
  count         = "${var.no_of_ec2}"
  ami           = "${var.ec2_ami}"
  instance_type = "t2.micro"
  subnet_id     = "${var.subnet_ids[count.index]}"
  tags = {
    Name = "HelloWorld"
  }
}
