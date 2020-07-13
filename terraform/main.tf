provider "aws" {
  region  = "us-east-1"
}

locals {
  valid_variable 	= "test"
  invalid_variable 	= "{var.dummy_variable}-test2" 
}