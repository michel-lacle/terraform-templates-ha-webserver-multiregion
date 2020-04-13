resource "aws_route53_health_check" "north-america-health-check" {
  ip_address = module.ha_webserver_usa.ec2-ip
  port              = 80
  type              = "HTTP"
  resource_path     = "/"
  failure_threshold = "5"
  request_interval  = "30"

  tags = {
    Name = "north-america-health-check"
  }
}

resource "aws_route53_health_check" "asia-health-check" {
  ip_address = module.ha_webserver_asia
  port              = 80
  type              = "HTTP"
  resource_path     = "/"
  failure_threshold = "5"
  request_interval  = "30"

  tags = {
    Name = "asia-health-check"
  }
}
