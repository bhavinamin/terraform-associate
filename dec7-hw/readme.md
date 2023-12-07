# [Terraform] Dec 7: Outputs and Variables

### tut_crossreferencevariables

Goal: Demonstrate that you can reference another resource's attributes 

- Define an AWS Elastic IP resource
-  Define a security group
- Successfully map the public ip of the ElasticIP resource into the security group’s ingress rule (cidr_block)
- Apply and create the resources

  

### tut_outputvalues:

Goal: Demonstrate that you can grab outputs from terraform

- Apply and create an AWS Elastic IP resource
-  Output all of the attributes of the Elastic IP resource
-  Output the public ip of the Elastic IP resource

  

### tut_variables

Goal: Demonstrate you can hardcode a variable and call it when establishing resources
- Create an AWS Security Group and define three TCP ingress rules for ports 53, 80, and 443
- Create a variables.tf and a variable called “vpn-ip” within it, assign its default attribute to an IP address
- Assign the cidr_blocks attribute for each ingress rule to a variable
- Apply and create the security group

  

### tut_variables_tfvars
- Create a variable in variables.tf called “instance_type” with a default value of “t2.micro”
-  Create an externally stored variable called “instance_type” and assign it a value of  “t2.large” 
-  Create the schema for an AWS EC2 resource and reference the variable for instance_type
-  Plan an AWS EC2 instance. Instance should be large. 




