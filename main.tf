terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

provider "random" {
  # Configuration options
}

variable "min" {
  type    = number
  default = 1
}

variable "max" {
  type    = number
  default = 100
}

resource "random_integer" "priority1" {
  min = var.min
  max = var.max
}

output "random_integer" {
  value = random_integer.priority1.result
}

resource "random_integer" "priority2" {
  min = var.min
  max = var.max
}

output "random_integer2" {
  value = random_integer.priority2.result
}
