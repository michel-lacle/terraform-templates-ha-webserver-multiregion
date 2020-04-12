module "ha_webserver_usa" {
  source = "./ha_webserver"

  providers = {
    aws = aws.north-america
  }

  availability_zones = ["us-east-1a", "us-east-1b"]
  user_data = "webserver_install_north-america.sh"
}

module "ha_webserver_asia" {
  source = "./ha_webserver"

  providers = {
    aws = aws.asia
  }

  availability_zones = ["ap-northeast-2a", "ap-northeast-2b"]
  user_data = "webserver_install_asia.sh"
}