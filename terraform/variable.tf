variable "aws_region" {
  type = string
}


variable "ec2_key_name" {
  type = string
}


variable "dbname" {
  description = "Database name"
  type        = string
}

variable "dbuser" {
  description = "Database admin username"
  type        = string
}

variable "dbpass" {
    sensitive = false
}

variable "projectname" {
  type = string
}

variable "ami" {
    type = string
}

