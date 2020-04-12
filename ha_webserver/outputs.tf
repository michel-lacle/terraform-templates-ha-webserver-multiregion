output "ec2-ip" {
  value = aws_instance.public-ec2-webserver.public_ip
}