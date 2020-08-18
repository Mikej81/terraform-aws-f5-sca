
# Regions and AZ https://www.parkmycloud.com/blog/aws-regions-and-availability-zones/
variable "aws_region" {
  description = "AWS Region to deploy SCA in"
  type        = string
  default     = "us-gov-west-1"
}

variable "aws_profile" {
  description = "AWS Profile to use"
  type        = string
  default     = "f5-gov"
}

variable "ec2_key_name" {
  description = "AWS EC2 Key name for SSH access"
  type        = string
  default     = "mjc_2020_aws"
}

variable "ec2_instance_type" {
  description = "AWS EC2 instance type"
  type        = string
  default     = "m4.xlarge"
}

variable "project" {
  description = "Project name for the SCA deployment"
  type        = string
  default     = "mjcSCA"
}

variable "f5_ami_search_name" {
  description = "BIG-IP AMI name to search for"
  type        = string
  default     = "F5 Networks BIGIP-14.* PAYG - Best 200Mbps*"
}

variable "f5_owner_ids" {
  description = "F5 owner ID"
  type        = list(string)
  default     = ["679593333241", "345084742485", "self", "aws-marketplace"]
}

variable "atc_versions" {
  description = "F5 Automation Toolchain Version used in this project"
  type        = map(string)
  default = {
    doVersion   = "1.12.0"
    as3Version  = "3.20.0"
    tsVersion   = "1.11.0"
    cfVersion   = "1.3.0"
    fastVersion = "0.2.0"
  }
}

variable "region-az-1" {
  description = "AWS Region availability zone to deploy 1 of the 2 SCA stacks"
  type        = string
  default     = "us-gov-west-1a"
}

variable "region-az-2" {
  description = "AWS Region availability zone to deploy 1 of the 2 SCA stacks"
  type        = string
  default     = "us-gov-west-1b"
}

variable "allowed_mgmt_cidr" {
  description = "CIDR of allowed IPs for the BIG-IP management interface"
  type        = string
  default     = "0.0.0.0/0"
}

variable "allowed_app_cidr" {
  description = "CIDR of allowed IPs for the BIG-IP Virtual Servers"
  type        = string
  default     = "0.0.0.0/0"
}

variable "cidr-1" {
  description = "CIDR block for the Security VPC"
  default     = "10.100.0.0/16"
}

variable "cidr-2" {
  description = "CIDR block for the Applicaiton VPC"
  default     = "10.200.0.0/16"
}

variable "cidr-3" {
  description = "CIDR block for the Container VPC"
  default     = "10.240.0.0/16"
}
