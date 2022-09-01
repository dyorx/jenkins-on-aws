terraform {
  backend "s3" {
    region         = "us-west-2"
    bucket         = "tf-serverless-jenkins-state-bucket"
    key            = "serverless-jenkins.tfstate"
    dynamodb_table = "tf-serverless-jenkins-lock"
    encrypt        = true
  }
}