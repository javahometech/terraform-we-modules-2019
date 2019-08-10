output "pub_pri_ids" {
  value = "${aws_subnet.main.*.id}"
}
