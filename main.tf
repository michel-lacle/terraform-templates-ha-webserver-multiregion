module "ha_webserver_usa" {
  source = "./ha_webserver"

  providers = {
    aws = aws.north-america
  }

  availability_zones = ["us-east-1a", "us-east-1b"]
  user_data = "webserver_install_north-america.sh"
  ami_id = "ami-0a887e401f7654935"
}

module "ha_webserver_asia" {
  source = "./ha_webserver"

  providers = {
    aws = aws.asia
  }

  availability_zones = ["ap-northeast-2a", "ap-northeast-2b"]
  user_data = "webserver_install_asia.sh"
  ami_id = "ami-01288945bd24ed49a"
}