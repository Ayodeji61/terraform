variable "sample" {
  default = "hello"
}

# Variable is not a combination then var.sample, if it is combining with any other strings then ${var.sample}
output "sample" {
  value = var.sample
}

output "sample1" {
  value = "Hey, ${var.sample}"
}

# List Variable
variable "sample4" {
  default = [
  "Hello",
    100,
    true
  ]
}

# Map Variable
variable "sample5" {
  default = {
    string  = "Hello",
    number  = 100,
    boolean = true
  }
}

## Access a list value
output "sample4" {
  value = var.sample4[0]
}

## Access a list value
output "sample5" {
  value = var.sample5["number"]
}

## Pick a variable form terraform.tfvars file
variable "sample6" {}

output "sample6" {
  value = var.sample6
}

## Pick a variable from CLI
variable "sample7" {}
output "sample7" {
  value = var.sample7
}

## Pick a variable from SHELL ENV VARIABLE
variable "sample8" {}
output "sample8" {
  value = var.sample8
}
