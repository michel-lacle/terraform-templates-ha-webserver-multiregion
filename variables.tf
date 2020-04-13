variable "regions" {
  type = map(string)

  default = {
    north-america = "us-east-1"
    asia = "ap-northeast-2"
  }
}