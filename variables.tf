#Variáveis genéricas AWS
variable "region" {
  default = "us-east-1"
}
variable "profile" {
  default = "default"
}
variable "env" {
  default = "Clicksign"
}
variable "availabilityZone" {
  default = "us-east-1a"
}
variable "instanceTenancy" {
  default = "default"
}
variable "dnsSupport" {
  default = true
}
variable "dnsHostNames" {
  default = true
}
# Variáveis VPC
variable "vpcCIDRblock" {
  default = "172.16.0.0/16"
}
variable "publicsCIDRblock" {
  default = "172.16.1.0/24"
}
variable "privatesCIDRblock" {
  default = "172.16.2.0/24"
}
variable "publicdestCIDRblock" {
  default = "0.0.0.0/0"
}
variable "localdestCIDRblock" {
  default = "172.16.0.0/16"
}
variable "ingressCIDRblock" {
  type    = list(any)
  default = ["0.0.0.0/0"]
}
variable "egressCIDRblock" {
  type    = list(any)
  default = ["0.0.0.0/0"]
}
variable "mapPublicIP" {
  default = true
}