variable "vpc_name" {
  type = map(string)
  default = {
    "default" = "example-dev"
    "dev"     = "example-dev"
    "pro"     = "example-pro"
  }
}

variable "environment_cidr" {
  type = map(string)
  default = {
    "default" = "10.0.0.0/16"
    "dev"     = "10.0.0.0/16"
    "pro"     = "20.0.0.0/16"
  }
}