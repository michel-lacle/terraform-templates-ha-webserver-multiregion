provider "aws" {
  region = "us-east-1"

  alias = "north-america"
}

provider "aws" {
  region = "ap-northeast-2"

  alias = "asia"
}

provider "aws" {
  region = "us--east-1"
}