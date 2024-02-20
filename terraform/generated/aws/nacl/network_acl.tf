resource "aws_network_acl" "tfer--acl-002D-070f87b6f79b7611f" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-09711ad9c55c4e510_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-04ded211e6d04e671_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-0693e3c9a4a2ec067_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-002D-09f6fc50c18ee8071_id}"]
  vpc_id     = "vpc-0d17cdfecd75dde0b"
}
