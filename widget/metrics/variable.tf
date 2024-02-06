variable "type" {
    default = "metric"
}

variable "x" {
    default = 0
}

variable "y" {
    default = 0
}

variable "width" {
    default = 12
}

variable "height" {
    default = 6
}

variable "metrics_namespace" {
    default = "AWS/EC2"
}

variable "metrics_name" {
    default = "CPUUtilization"
}

variable "instance_id_name" {
    default = "InstanceId"
}

variable "instance_id" {
    default = "i-0f3c8fc96c8e0b806"
}

variable "period" {
    default = 300
}

variable "stat" {
    default = "Average"
}

variable "region" {
    default = "us-east-1"
}

variable "title" {
    default = "EC2 Instance CPU"
}


