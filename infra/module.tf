terraform {
  backend "s3" {
    bucket = "wafer-tf-state-sethu"
    key    = "tf_state"
    region = "us-east-1"
  }
}

module "data_collection_app_runner_service" {
  source = "./search_data_collection_app_runner_service"
}

