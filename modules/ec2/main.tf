resource "aws_instance" "jenkins_server" {
  ami                    = var.jenkins_server_ami
  instance_type          = var.instance_type
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name = "Jenkins-Server"
  }
}
