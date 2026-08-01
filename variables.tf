variable "aws_region" {
  type = string
  default = "ap-south-1"
}
variable "project_name" {
  type = string
  default = "Proj"
}

variable "cidr" {
  type = string
  default = "29.0.0.0/16"
}
variable "public_subnet" {
  type = list(string)
  default = ["29.0.0.0/24", "29.0.1.0/24"]
}
variable "private_subnet" {
  type = list(string)
  default = ["29.0.2.0/24", "29.0.3.0/24"]
}
