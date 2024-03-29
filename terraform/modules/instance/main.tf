resource "aws_security_group" "platzi_ssh" {
  name        = var.sg_name
  description = "Allow SSH connection"
  # para configurar varios recursos similares
  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }
  tags = var.tags
}

resource "aws_instance" "platzi-instance" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  tags            = var.tags
  security_groups = [aws_security_group.platzi_ssh.name]
}