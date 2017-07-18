variable "PANFWRegionMap" {
  type = "map"
  default =
    {
      "us-west-2" = "ami-e614af86",
      "ap-northeast-1" =   "ami-4bbcfa2c",
      "us-west-1"      =   "ami-84a1fce4",
      "ap-northeast-2" =   "ami-59419037",
      "ap-southeast-1" =   "ami-17a41074",
      "ap-southeast-2" =   "ami-10303673",
      "eu-central-1"   =   "ami-e93df486",
      "eu-west-1"      =   "ami-43f1aa25",
      "eu-west-2"      =   "ami-d44d58b0",
      "sa-east-1"      =   "ami-12b4d07e",
      "us-east-1"      =   "ami-2127dc37",
      "us-east-2"      =   "ami-810d28e4",
      "ca-central-1"   =   "ami-6ebd000a",
      "ap-south-1"     =   "ami-556a1b3a"
    }
}

variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}
variable "key_name" {}
variable "instance_type" {}
variable "public_subnet" {}
variable "private_subnet" {}
