resource "aws_network_interface" "tfer--eni-002D-04e647e64f298441e" {
  description        = "ELB app/awseb--AWSEB-2hKRkhyb6C4w/86731efcd51e56a8"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.45.155"
  private_ip_list    = ["172.31.45.155"]
  private_ips        = ["172.31.45.155"]
  private_ips_count  = "0"
  security_groups    = ["sg-0cf7fc000ba31f2e1"]
  source_dest_check  = "true"
  subnet_id          = "subnet-04ded211e6d04e671"
}

resource "aws_network_interface" "tfer--eni-002D-0694851cf2105e156" {
  description        = "ELB app/awseb--AWSEB-2hKRkhyb6C4w/86731efcd51e56a8"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.29.94"
  private_ip_list    = ["172.31.29.94"]
  private_ips        = ["172.31.29.94"]
  private_ips_count  = "0"
  security_groups    = ["sg-0cf7fc000ba31f2e1"]
  source_dest_check  = "true"
  subnet_id          = "subnet-09711ad9c55c4e510"
}

resource "aws_network_interface" "tfer--eni-002D-09863ec8d33c4d2ee" {
  attachment {
    device_index = "0"
    instance     = "i-0d39777b6ca7c28bb"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.32.133"
  private_ip_list    = ["172.31.32.133"]
  private_ips        = ["172.31.32.133"]
  private_ips_count  = "0"
  security_groups    = ["sg-04baac7e1f2058980"]
  source_dest_check  = "true"
  subnet_id          = "subnet-04ded211e6d04e671"
}

resource "aws_network_interface" "tfer--eni-002D-0b9219fb0c2ea73e5" {
  attachment {
    device_index = "0"
    instance     = "i-070b65ff0a04ef96c"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.25.79"
  private_ip_list    = ["172.31.25.79"]
  private_ips        = ["172.31.25.79"]
  private_ips_count  = "0"
  security_groups    = ["sg-04baac7e1f2058980"]
  source_dest_check  = "true"
  subnet_id          = "subnet-09711ad9c55c4e510"
}
