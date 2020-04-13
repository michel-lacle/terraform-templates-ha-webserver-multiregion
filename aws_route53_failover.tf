resource "aws_route53_record" "w-north-america" {
  zone_id = data.aws_route53_zone.f1kart-zone.zone_id
  name    = "failover-ha"
  type    = "A"
  ttl     = "5"

  failover_routing_policy {
    type = "PRIMARY"
  }

  health_check_id = aws_route53_health_check.north-america-health-check.id

  set_identifier = "north-america"
  records        = [module.ha_webserver_usa.ec2-ip]
}

resource "aws_route53_record" "w-ha-asia" {
  zone_id = data.aws_route53_zone.f1kart-zone.zone_id
  name    = "failover-ha"
  type    = "A"
  ttl     = "5"

  failover_routing_policy {
    type = "SECONDARY"
  }

  health_check_id = aws_route53_health_check.asia-health-check.id

  set_identifier = "asia"
  records        = [module.ha_webserver_asia.ec2-ip]
}
