1) Application is dockerized. Use Dockerfile to build the image locally or pull it from Docker Hub.

   - docker pull kkarapull/flask:0.1

2) Deploy your application with AWS ELastic Beanstalk. As a prerequisite - EB CLI must be installed https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-install.html

Test your application locally by running "python app.py" command. Access endpoints in browser at http://127.0.0.1:5000 
After testing locally, deploy it to an Elastic Beanstalk environment. Elastic Beanstalk uses the instructions in your Dockerfile to build and run the image.

   - eb create <envinronment-name>

When deploying Elastic Beanstalk environment from remote Docker image, run the above command form folder remote-docker\Dockerrun.aws.json 

After your environment launches, use the eb open command to view it in a web browser. 

   - eb open

You will also get a permanent link to access an application 

3) The following resources will be created in AWS:

    /terraform/generated/aws/

    - Two EC2 instances with running application
    - AutoScaling Group
    - Application Load Balancer with Round Robin load distribution principle 
    - VPC with 4 public subnets, SG's, NACL and RT
    - IAM 

4) Using Terraformer, it is possible to generate Terraform code based on existing infrastructure (reverse Terraform). 
   Later it will be possible to run an manage AWS infrastructure with Terraform with IaC approach 

   terraformer import aws --resources="*" --connect=true --regions=<your-regions> --profile=<your_aws_cli_profile>

   https://github.com/GoogleCloudPlatform/terraformer/blob/master/docs/aws.md

5) Alterantevly, IaC approach can be leveraged by saving infrastrusture created by Elastic Beanstalk as AWS CloudFormation template. 

    /Cloudformation/EBTemplate-template-1708367303506.json 

6) One of the requirement was implementation of https. This can be reached by terminating https traffic on LoadBalancer. This requires creation of SSL certificate for specific LB. 
   It is not implemented in current solution, but can be implemented by leveraging AWS ACM. Also can be automated by adding ACM resource to Terraform code.  