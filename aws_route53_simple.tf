data "aws_route53_zone" "f1kart-zone" {
  name = "f1kart.com."
}

resource "aws_route53_record" "simple-ha" {
  zone_id = data.aws_route53_zone.f1kart-zone.zone_id
  name    = "simple-ha"
  type    = "A"
  ttl     = "5"

  weighted_routing_policy {
    weight = 50
  }

  set_identifier = "north-america"
  records        = [module.ha_webserver_usa.ec2-ip, module.ha_webserver_asia.ec2-ip]
}