# vpc variables
variable "vpc_cirdr" {
  default       = "10.0.0.0/16"
  description   = "vpc cidr block"
  type          = string
}

variable "public_subnet_az1_cirdr" {
  default       = "10.0.0.0/24"
  description   = "public subnet az1 cidr block"
  type          = string
}

variable "public_subnet_az2_cirdr" {
  default       = "10.0.1.0/24"
  description   = "public subnet az2 cidr block"
  type          = string
}

variable "private_app_subnet_az1_cirdr" {
  default       = "10.0.2.0/24"
  description   = "private app subnet az1 cidr block"
  type          = string
}

variable "private_app_subnet_az2_cirdr" {
  default       = "10.0.3.0/24"
  description   = "private app subnet az2 cidr block"
  type          = string
}

variable "private_data_subnet_az1_cirdr" {
  default       = "10.0.4.0/24"
  description   = "private data subnet az1 cidr block"
  type          = string
}

variable "private_data_subnet_az2_cirdr" {
  default       = "10.0.5.0/24"
  description   = "private data subnet az2 cidr block"
  type          = string
}

# security group variables
variable "ssh_location" {
  default       = "0.0.0.0/0"
  description   = "the ip address that can ssh into the ec2"
  type          = string
}

# rds variables
variable "database_snapshot_identifier" {
  default       = "arn:aws:rds:us-east-1:001129808237:snapshot:database-1-snapshot"
  description   = "the database snapshot arn"
  type          = string
}

variable "database_instance_class" {
  default       = "db.t2.micro"
  description   = "the database instance type"
  type          = string
}

variable "database_instance_identifier" {
  default       = "database-1"
  description   = "the database instance type identifier"
  type          = string
}

variable "multi_az_deployment" {
  default       = false
  description   = "create a stanby db instance"
  type          = bool
}