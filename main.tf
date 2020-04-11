module "ha_webserver_usa" {
  source = "./ha_webserver"

  providers = {
    aws = aws.north-america
  }
}

module "ha_webserver_asia" {
  source = "./ha_webserver"

  providers = {
    aws = aws.asia
  }
}