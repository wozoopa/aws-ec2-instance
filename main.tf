resource "aws_instance" "ec2_instance" {
  ami                    = "${var.ami_id}"
  count                  = "${var.number_of_instances}"
  subnet_id              = "${element(split(",", var.subnet_ids), count.index)}"
  instance_type          = "${var.instance_type}"
  vpc_security_group_ids = ["${var.security_group_ids}"]
  user_data              = "${file(var.user_data)}"
  key_name               = "${var.key_name}"

  tags {

    // Takes the instance_name input variable and adds
    //  the count.index to the name., e.g.
    //  "example-host-web-1"
    Name = "${var.instance_name}-${count.index}"
  }
}

resource "aws_eip" "ec2_instance_ip" {
  instance = "${aws_instance.ec2_instance.id}"
  vpc      = true
}
