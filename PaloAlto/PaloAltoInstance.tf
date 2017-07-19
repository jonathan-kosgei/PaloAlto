
resource "aws_eip" "" {
  vpc                       = true
  network_interface         = "${aws_network_interface.PaloAltoPublicInterface.id}"
}


resource "aws_network_interface" "PaloAltoPublicInterface" {
  subnet_id       = "${var.public_subnet}"
  private_ips     = ["10.0.1.20"]
  security_groups = ["${aws_security_group.PublicSecurityGroup.id}"]
  source_dest_check = false

  attachment {
    instance     = "${aws_instance.PaloAltoInstance.id}"
    device_index = 1
  }
}

resource "aws_network_interface" "PaloAltoPrivateInterface" {
  subnet_id       = "${var.private_subnet}"
  private_ips     = ["10.0.2.20"]
  security_groups = ["${aws_security_group.PrivateSecurityGroup.id}"]
  source_dest_check = false

  attachment {
    instance     = "${aws_instance.PaloAltoInstance.id}"
    device_index = 2
  }
}

resource "aws_instance" "PaloAltoInstance" {
  ami = "${var.PANFWRegionMap[var.aws_region]}"
  instance_type = "${var.instance_type}"
  associate_public_ip_address = true
  private_ip = "10.0.1.10"
  subnet_id = "${var.public_subnet}"
  key_name = "${var.key_name}"

  ebs_block_device {
    device_name = "/dev/xvda"
    volume_type = "gp2"
    delete_on_termination = true
    volume_size = 50
  }

}