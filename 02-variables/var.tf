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
  value = var.sample4
}