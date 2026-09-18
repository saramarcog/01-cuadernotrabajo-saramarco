provider "aws" {
  region = var.region
}

resource "aws_vpc" "vpc_aula" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "${var.nombre_proyecto}-vpc"
  }
}

resource "aws_subnet" "publica" {
  vpc_id                  = aws_vpc.vpc_aula.id
  cidr_block              = var.subnet_publica_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.nombre_proyecto}-publica"
  }
}

resource "aws_subnet" "privada" {
  vpc_id     = aws_vpc.vpc_aula.id
  cidr_block = var.subnet_privada_cidr

  tags = {
    Name = "${var.nombre_proyecto}-privada"
  }
}

resource "aws_security_group" "web_sg" {
  name   = "terraform-web-sg"
  vpc_id = aws_vpc.vpc_aula.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}



resource "aws_instance" "servidor" {
  ami                    = "ami-0cdb4c9b0d678e416"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.publica.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = "${var.nombre_proyecto}-ec2"
  }
}

resource "aws_s3_bucket" "bucket_aula" {
  bucket = "${var.nombre_proyecto}-sara-2026"

  tags = {
    Name = "${var.nombre_proyecto}-s3"
  }
}