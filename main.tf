module "PaloAlto" {
  source  = "./PaloAlto"
  aws_access_key = "${var.aws_access_key}""
  aws_secret_key = "${var.aws_secret_key}""
  aws_region = "${var.aws_region}""
  key_name = "${var.key_name}""
  instance_type = "${var.instance_type}""
  public_subnet = "${var.public_subnet}""
  private_subnet = "${var.private_subnet}""
}