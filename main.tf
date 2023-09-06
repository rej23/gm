terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
    }
  }
    
}

provider "aws" {
    region = "us-east-1"
    #access_key = ""
    #secret_key = ""
    #### alternative for using aws configure #####
}

resource "aws_instance" "example" {
    ami      = "ami-04132f301c3e4f138"
    instance_type = "t2.micro"
    key_name = "newone"
    tags = {Name = "firstone" 
}
}

