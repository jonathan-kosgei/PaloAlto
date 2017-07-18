resource "aws_security_group" "PrivateSecurityGroup" {
  name        = "PrivateSecurityGroup"
  description = "Private Security Group"

  ingress {
    from_port   = 0
    to_port     = 65635
    protocol    = "-1"
    self        = true
  }

}
