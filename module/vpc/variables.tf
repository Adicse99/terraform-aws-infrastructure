variable "project_name" {
  type = string
}
variable "cidr" {}
variable "region" {}
variable "public_subnet" {
    type = list(string)
}
variable "private_subnet" {
  type = list(string)
}