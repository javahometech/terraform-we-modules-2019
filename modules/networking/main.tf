resource "aws_vpc" "main" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "${var.vpc_tenancy}"

  tags = {
    Name = "main"
  }
}

# create private subnets

resource "aws_subnet" "main" {
  count             = "${length(local.az_names)}"
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "${cidrsubnet(var.vpc_cidr, var.subnet_newbits, count.index)}"
  availability_zone = "${local.az_names[count.index]}"
  tags = {
    Name = "Main"
  }
}
