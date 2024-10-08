resource "random_string" "example" {
  length            = 15
  special           = true
  upper             = true
  lower             = true
  number            = true
}

output "random_string_value" {
  value     = random_string.example.result
  sensitive = true
}

terraform {
  required_providers {
    spacelift = {
      source = "spacelift-io/spacelift"
    }
  }
}
