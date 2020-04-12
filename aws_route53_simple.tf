resource "aws_route53_record" "simple-ha" {
  zone_id = data.aws_route53_zone.f1kart-zone.zone_id
  name    = "simple-ha"
  type    = "A"
  ttl     = "5"

  records        = [module.ha_webserver_usa.ec2-ip, module.ha_webserver_asia.ec2-ip]
}
