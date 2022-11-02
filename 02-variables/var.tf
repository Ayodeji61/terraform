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