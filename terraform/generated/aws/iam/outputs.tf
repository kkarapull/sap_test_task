output "aws_iam_instance_profile_tfer--aws-002D-elasticbeanstalk-002D-ec2-002D-role_id" {
  value = "${aws_iam_instance_profile.tfer--aws-002D-elasticbeanstalk-002D-ec2-002D-role.id}"
}

output "aws_iam_role_policy_attachment_tfer--AWSServiceRoleForAutoScaling_AutoScalingServiceRolePolicy_id" {
  value = "${aws_iam_role_policy_attachment.tfer--AWSServiceRoleForAutoScaling_AutoScalingServiceRolePolicy.id}"
}

output "aws_iam_role_policy_attachment_tfer--AWSServiceRoleForElasticLoadBalancing_AWSElasticLoadBalancingServiceRolePolicy_id" {
  value = "${aws_iam_role_policy_attachment.tfer--AWSServiceRoleForElasticLoadBalancing_AWSElasticLoadBalancingServiceRolePolicy.id}"
}

output "aws_iam_role_policy_attachment_tfer--AWSServiceRoleForSupport_AWSSupportServiceRolePolicy_id" {
  value = "${aws_iam_role_policy_attachment.tfer--AWSServiceRoleForSupport_AWSSupportServiceRolePolicy.id}"
}

output "aws_iam_role_policy_attachment_tfer--AWSServiceRoleForTrustedAdvisor_AWSTrustedAdvisorServiceRolePolicy_id" {
  value = "${aws_iam_role_policy_attachment.tfer--AWSServiceRoleForTrustedAdvisor_AWSTrustedAdvisorServiceRolePolicy.id}"
}

output "aws_iam_role_policy_attachment_tfer--aws-002D-elasticbeanstalk-002D-ec2-002D-role_AWSElasticBeanstalkMulticontainerDocker_id" {
  value = "${aws_iam_role_policy_attachment.tfer--aws-002D-elasticbeanstalk-002D-ec2-002D-role_AWSElasticBeanstalkMulticontainerDocker.id}"
}

output "aws_iam_role_policy_attachment_tfer--aws-002D-elasticbeanstalk-002D-ec2-002D-role_AWSElasticBeanstalkWebTier_id" {
  value = "${aws_iam_role_policy_attachment.tfer--aws-002D-elasticbeanstalk-002D-ec2-002D-role_AWSElasticBeanstalkWebTier.id}"
}

output "aws_iam_role_policy_attachment_tfer--aws-002D-elasticbeanstalk-002D-ec2-002D-role_AWSElasticBeanstalkWorkerTier_id" {
  value = "${aws_iam_role_policy_attachment.tfer--aws-002D-elasticbeanstalk-002D-ec2-002D-role_AWSElasticBeanstalkWorkerTier.id}"
}

output "aws_iam_role_policy_attachment_tfer--aws-002D-elasticbeanstalk-002D-service-002D-role_AWSElasticBeanstalkEnhancedHealth_id" {
  value = "${aws_iam_role_policy_attachment.tfer--aws-002D-elasticbeanstalk-002D-service-002D-role_AWSElasticBeanstalkEnhancedHealth.id}"
}

output "aws_iam_role_policy_attachment_tfer--aws-002D-elasticbeanstalk-002D-service-002D-role_AWSElasticBeanstalkManagedUpdatesCustomerRolePolicy_id" {
  value = "${aws_iam_role_policy_attachment.tfer--aws-002D-elasticbeanstalk-002D-service-002D-role_AWSElasticBeanstalkManagedUpdatesCustomerRolePolicy.id}"
}

output "aws_iam_role_tfer--AWSServiceRoleForAutoScaling_id" {
  value = "${aws_iam_role.tfer--AWSServiceRoleForAutoScaling.id}"
}

output "aws_iam_role_tfer--AWSServiceRoleForElasticLoadBalancing_id" {
  value = "${aws_iam_role.tfer--AWSServiceRoleForElasticLoadBalancing.id}"
}

output "aws_iam_role_tfer--AWSServiceRoleForSupport_id" {
  value = "${aws_iam_role.tfer--AWSServiceRoleForSupport.id}"
}

output "aws_iam_role_tfer--AWSServiceRoleForTrustedAdvisor_id" {
  value = "${aws_iam_role.tfer--AWSServiceRoleForTrustedAdvisor.id}"
}
