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
}

variable "max" {
  type    = number
}

resource "random_integer" "priority" {
  min = var.min
  max = var.max
}

output "random_integer" {
  value = random_integer.priority.result
}
