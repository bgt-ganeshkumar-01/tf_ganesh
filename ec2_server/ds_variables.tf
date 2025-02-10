variable "ami_id" {
  default = "ami-04f77c9cd94746b09"
}

variable "instance_count" {
  default = 2
}

variable "instance_name" {
  default = "tf_svr_01"
}

variable "project" {
  default = "nova"
}

variable "map_migrated" {
  default = "mig47269"
}

variable "owner" {
  default = "ganeshkumar.govindaraj@emsibg.com"
}

variable "team_owner" {
  default = "NOVA"
}

variable "platform" {
  default = "PRD"
}

variable "product_name" {
  default = "classic"
}

variable "subnet_id" {
  default = "subnet-0061c562c5a559e89"
}

variable "security_groups" {
  type    = list(string)
  default = ["sg-0ba325ac72bb87a52", "sg-072d834a97af9a0a5"]
}

variable "key_pair" {
  default = "nova_admin"
}

variable "ebs_c_size" {
  default = 100
}

variable "ebs_d_size" {
  default = 100
}

variable "iam_role" {
  default = "NOV-PRD-IAM-Role-FeedArchiveToS3-Classic" 
}
