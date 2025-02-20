#3EC2
variable "region" {
  default = "us-east-1"
}

variable "profile" {
  default = "default"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_name" {
  default = "server-challenge" 
}


variable "key_pair" {
  default = "key-challenge"
  
}


##### code deploy

variable "name_app" {
  default = "app-challenge"
}

variable "deployment_group_name" {
  default = "group-app-challenge"
}

variable "name_bucket_cd" {
  default = "s3-app-challenge01"
}