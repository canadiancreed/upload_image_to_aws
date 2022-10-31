resource "aws_instance" "node_server" {
  ami             = "ami-0a244485e2e4ffd03"
  instance_type   = "t2.micro"
  user_data       = file("config.sh")
  vpc_security_group_ids = ["${aws_security_group.Docker.id}"]

  tags = {
    Name = "server-machine"
  }
}