variable "availability_zones" {
  type = list(string)

  description = "the availability zone names for the region"
}

variable "user_data" {
  type = string
  description = "path to the user_data file to use to configure EC2"
}

variable "ami_id" {
  type = string
  description = "The AMI ID to use for EC2"
}