// Here you need to provide cloud provider details
terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~>5.92"
        }
    }

    required_version = ">=1.2"
}

// Provide provider region
provider "aws" {
    region = "eu-north-1"
}

resource "aws_instance" "dummy_server" {
    ami = "ami-0a716d3f3b16d290c"
    instance_type = "t3.micro"
    
    tags = {
        Name = "SampleServer"
    }
}