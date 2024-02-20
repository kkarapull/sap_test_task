resource "aws_elastic_beanstalk_application" "tfer--aqi" {
  description = "Application created from the EB CLI using \"eb init\""
  name        = "aqi"
}

resource "aws_elastic_beanstalk_application" "tfer--aqi-002D-app" {
  description = "Application created from the EB CLI using \"eb init\""
  name        = "aqi-app"
}
