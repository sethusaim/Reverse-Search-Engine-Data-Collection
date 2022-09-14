variable "app_runner_service_name" {
  default = "search_data_collection_apprunner_service"
  type    = string
}

variable "app_runner_service_port" {
  default = "8000"
  type    = string
}

variable "app_runner_service_image_url" {
  default = "347460842118.dkr.ecr.us-east-1.amazonaws.com/test:latest"
  type    = string
}

variable "app_runner_service_image_repository_type" {
  default = "ECR"
  type    = string
}

variable "app_runner_service_auto_deployments_enabled" {
  default = true
  type    = bool
}

variable "app_runner_service_service_role_name" {
  default = "apprunner_service_role"
  type    = string
}

variable "app_runner_service_role_policy_arn" {
  default = "arn:aws:iam::aws:policy/service-role/AWSAppRunnerServicePolicyForECRAccess"
  type    = string
}


