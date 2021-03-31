provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "maquina_wp" {
  ami = "${var.amis["us-east-1-ubuntu18"]}"
  instance_type = "${var.instance_type.micro}"
  key_name = "treinamento-concrete-key"
  tags = {
    Name = "maquina_ansible_com_worpress"
  }
  count = 1
  vpc_security_group_ids = ["${aws_security_group.acesso_geral.id}"]
}
