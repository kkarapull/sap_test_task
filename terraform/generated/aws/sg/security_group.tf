resource "aws_security_group" "tfer--awseb-002D-e-002D-hi5pkfze2p-002D-stack-002D-AWSEBLoadBalancerSecurityGroup-002D-1LAT5K8PUZ0O5_sg-002D-0cf7fc000ba31f2e1" {
  description = "Elastic Beanstalk created security group used when no ELB security groups are specified during ELB creation"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "awseb-e-hi5pkfze2p-stack-AWSEBLoadBalancerSecurityGroup-1LAT5K8PUZ0O5"

  tags = {
    Name                                = "aqi-env2"
    "elasticbeanstalk:environment-id"   = "e-hi5pkfze2p"
    "elasticbeanstalk:environment-name" = "aqi-env2"
  }

  tags_all = {
    Name                                = "aqi-env2"
    "elasticbeanstalk:environment-id"   = "e-hi5pkfze2p"
    "elasticbeanstalk:environment-name" = "aqi-env2"
  }

  vpc_id = "vpc-0d17cdfecd75dde0b"
}

resource "aws_security_group" "tfer--awseb-002D-e-002D-hi5pkfze2p-002D-stack-002D-AWSEBSecurityGroup-002D-MSAO01OYT02U_sg-002D-04baac7e1f2058980" {
  description = "SecurityGroup for ElasticBeanstalk environment."

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "5000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5000"
  }

  ingress {
    from_port       = "80"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--awseb-002D-e-002D-hi5pkfze2p-002D-stack-002D-AWSEBLoadBalancerSecurityGroup-002D-1LAT5K8PUZ0O5_sg-002D-0cf7fc000ba31f2e1_id}"]
    self            = "false"
    to_port         = "80"
  }

  name = "awseb-e-hi5pkfze2p-stack-AWSEBSecurityGroup-MSAO01OYT02U"

  tags = {
    Name                                = "aqi-env2"
    "elasticbeanstalk:environment-id"   = "e-hi5pkfze2p"
    "elasticbeanstalk:environment-name" = "aqi-env2"
  }

  tags_all = {
    Name                                = "aqi-env2"
    "elasticbeanstalk:environment-id"   = "e-hi5pkfze2p"
    "elasticbeanstalk:environment-name" = "aqi-env2"
  }

  vpc_id = "vpc-0d17cdfecd75dde0b"
}

resource "aws_security_group" "tfer--default_sg-002D-08c208b2acd27580b" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  vpc_id = "vpc-0d17cdfecd75dde0b"
}
