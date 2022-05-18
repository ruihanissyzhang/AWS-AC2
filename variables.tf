variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  # the type of the variable is string
  type        = string
  default     = "ExampleAppServerInstance"
}
