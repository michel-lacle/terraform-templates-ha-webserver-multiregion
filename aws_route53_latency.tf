resource "aws_route53_record" "l-north-america" {
  zone_id = data.aws_route53_zone.f1kart-zone.zone_id
  name    = "latency-ha"
  type    = "A"
  ttl     = "5"

  latency_routing_policy {
    region = var.regions.north-america
  }

  set_identifier = "north-america"
  records        = [module.ha_webserver_usa.ec2-ip]
}

resource "aws_route53_record" "l-ha-asia" {
  zone_id = data.aws_route53_zone.f1kart-zone.zone_id
  name    = "latency-ha"
  type    = "A"
  ttl     = "5"

  latency_routing_policy {
    region = var.regions.asia
  }

  set_identifier = "asia"
  records        = [module.ha_webserver_asia.ec2-ip]
}
