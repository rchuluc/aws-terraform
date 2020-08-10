resource "aws_security_group" "ssh-access" {
  name        = "ssh-access"
  description = "ssh-access"

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = var.cdirs_remote_access
  }
  tags = {
    Name = "ssh"
  }
}
