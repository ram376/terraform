provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "ec2-insta" {
ami = "ami-026839cf0f1f3928d"
instance_type = "t2.micro"
subnet_id = "subnet-5069af18"
iam_instance_profile = "ssm-ec2role"
user_data = <<EOT
             #!/bin/bash
             sudo yum install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
             sudo systemctl start amazon-ssm-agent
EOT
tags = {
  Name = "ec2-insta"
}
}

terraform {
  backend "s3" {
    bucket = "terra-s3-ram"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
}
}

