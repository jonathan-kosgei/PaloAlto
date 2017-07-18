resource "aws_security_group" "PublicSecurityGroup" {
  name        = "PublicSecurityGroup"
  description = "Public Security Group"

  ingress {
    from_port   = 0
    to_port     = 65635
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
