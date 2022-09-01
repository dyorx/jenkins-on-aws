#!/usr/bin/env bash

# export TERRAFORM_WORKSPACE=jason-local-farm-runner
export TF_STATE_BUCKET="tf-serverless-jenkins-state-bucket"
export TF_STATE_OBJECT_KEY="serverless-jenkins.tfstate"
export TF_LOCK_DB="tf-serverless-jenkins-lock"
export AWS_REGION=us-west-2

PRIVATE_SUBNETS='["subnet-025d383bc980058f7","subnet-0d9bf1b3c51f81438"]'
PUBLIC_SUBNETS='["subnet-062296e501d63aebd","subnet-087aab037900bfe6d"]'

export TF_VAR_route53_zone_id="ZH74MMRJDVIEK"
export TF_VAR_route53_domain_name="sandbox.aws.castandcrew.com"
export TF_VAR_vpc_id="vpc-03be096b68bb1618e"
export TF_VAR_efs_subnet_ids=${PRIVATE_SUBNETS}
export TF_VAR_jenkins_controller_subnet_ids=${PRIVATE_SUBNETS}
export TF_VAR_alb_subnet_ids=${PUBLIC_SUBNETS}