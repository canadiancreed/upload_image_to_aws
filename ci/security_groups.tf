resource "aws_security_group" "Docker" {
 ingress {

    cidr_blocks = ["0.0.0.0/0"]
    description = "http"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"


  }

  egress {

    cidr_blocks = ["0.0.0.0/0"]
    description = "http"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"


  }
  tags = {
    Name = "node-app-Firewall"
  }

}