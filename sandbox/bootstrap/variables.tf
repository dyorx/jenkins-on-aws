variable "state_bucket_name" {
  type = string
  # A random bucket name by default
  default = "tf-serverless-jenkins-state-bucket"
}

variable "state_lock_table_name" {
  type    = string
  default = "tf-serverless-jenkins-lock"
}
