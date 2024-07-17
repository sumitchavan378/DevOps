variable "region"{
    type = string
    default = "us-east-2"
}
variable "vpc"{
    type = string
    default = "my_vpc"
}

variable "statefile_s3"{
    type = string
    default = "terraform-state-bucket18813093"
}

variable "statefile_dynamodb"{
    type = string
    default = "terraform-lock-table"
}