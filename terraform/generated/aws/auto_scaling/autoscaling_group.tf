resource "aws_autoscaling_group" "tfer--awseb-002D-e-002D-hi5pkfze2p-002D-stack-002D-AWSEBAutoScalingGroup-002D-ouOV27VIhHnY" {
  availability_zones        = ["us-west-2b", "us-west-2c", "us-west-2a"]
  capacity_rebalance        = "false"
  default_cooldown          = "360"
  default_instance_warmup   = "0"
  desired_capacity          = "2"
  force_delete              = "false"
  health_check_grace_period = "0"
  health_check_type         = "EC2"
  launch_configuration      = "${aws_launch_configuration.tfer--awseb-002D-e-002D-hi5pkfze2p-002D-stack-002D-AWSEBAutoScalingLaunchConfiguration-002D-w2FJvD9b9CQw.name}"
  max_instance_lifetime     = "0"
  max_size                  = "2"
  metrics_granularity       = "1Minute"
  min_size                  = "2"
  name                      = "awseb-e-hi5pkfze2p-stack-AWSEBAutoScalingGroup-ouOV27VIhHnY"
  protect_from_scale_in     = "false"
  service_linked_role_arn   = "arn:aws:iam::533267051268:role/aws-service-role/autoscaling.amazonaws.com/AWSServiceRoleForAutoScaling"

  tag {
    key                 = "elasticbeanstalk:environment-id"
    propagate_at_launch = "true"
    value               = "e-hi5pkfze2p"
  }

  tag {
    key                 = "elasticbeanstalk:environment-name"
    propagate_at_launch = "true"
    value               = "aqi-env2"
  }

  tag {
    key                 = "Name"
    propagate_at_launch = "true"
    value               = "aqi-env2"
  }

  target_group_arns = ["arn:aws:elasticloadbalancing:us-west-2:533267051268:targetgroup/awseb-AWSEB-FKWUZIJEYHTZ/2e4091a2b0329dfe"]

  traffic_source {
    identifier = "arn:aws:elasticloadbalancing:us-west-2:533267051268:targetgroup/awseb-AWSEB-FKWUZIJEYHTZ/2e4091a2b0329dfe"
    type       = "elbv2"
  }

  wait_for_capacity_timeout = "10m"
}
