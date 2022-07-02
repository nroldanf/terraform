variable "ami_id" {
  default     = ""
  description = "AMI id"
}

variable "instance_type" {
  default     = ""
  description = "Instance type"
}

variable "tags" {
  default     = {}
  description = "Tags to filter AWS resources"
}

variable "sg_name" {

}

variable "ingress_rules" {

}

