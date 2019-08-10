provider "aws" {
  region = "${var.region}"
}

module "myvpc" {
  source = "./modules/networking"
}

module "webapp" {
  source     = "./modules/ec2"
  subnet_ids = "${module.myvpc.pub_pri_ids}"
}
