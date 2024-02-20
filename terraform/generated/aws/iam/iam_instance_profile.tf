resource "aws_iam_instance_profile" "tfer--aws-002D-elasticbeanstalk-002D-ec2-002D-role" {
  name = "aws-elasticbeanstalk-ec2-role"
  path = "/"
  role = "aws-elasticbeanstalk-ec2-role"
}
