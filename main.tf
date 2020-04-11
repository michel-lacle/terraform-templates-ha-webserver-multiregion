module "ha_webserver_usa" {
  source = "./ha_webserver"

  providers = {
    aws = aws.north-america
  }
}