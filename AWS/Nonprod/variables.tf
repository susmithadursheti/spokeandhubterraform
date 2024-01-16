variable "policyname" {
  description = "The name of the policy"
}

variable "organizationalunit" {
  type = string
}

variable "region" {
  type = string
}

variable "bucket" {
  type = string
}

variable "email" {
  type = string
}

variable "accountname" {
  type = string
}

variable "region_lockdown" {
  description = "The AWS region(s) you want to restrict resources to."
  type        = list(string)
  default = [
    "us-east-1",
    "us-east-2",
    "us-west-1"
  ]
}