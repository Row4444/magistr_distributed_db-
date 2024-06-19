variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-west-2"
}

variable "db_username" {
  description = "Username for the RDS instance"
  default     = "foo"
}

variable "db_password" {
  description = "Password for the RDS instance"
  default = "m1pk3PcpiV4t"
}
