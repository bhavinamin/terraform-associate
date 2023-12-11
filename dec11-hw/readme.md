# [Terraform] Dec 11: Variable Types, Counts, Conditional Expressions and Functions

### Defining variable types | tut_variabletypes
 - Define a simple AWS Elastic Load Balancer resource. Don’t need instance or access logs. 
 - Set its availability zones, name, and idle+connection draining timeouts as variables with defined types
 - Assign the variables in tfvars and successfully terraform plan

### Understanding Count, Count Index, and Conditional Expressions | tut_count_index_conditionals
- Create three ec2 dev and prod instances, in their own respective resource blocks
- Declare an “is_test” Boolean variable. If is_test is True, 3 t2.micro instances should be spun up. If false, 3 t2.large instances should be spun up. Main
- The names of each instance should follow the convention:  {environment}-{instance_number}

### Understanding built-in functions | tut_functions 
##### (Lookup)
- Declare a map of 2 AMIs for two AWS regions (us-east1, us-west1)
- Declare a variable where the default AWS region is set to us-east1
- In a single resource, configure two EC2 instances where the AMI is passed in via the stored region

##### (Element)
- Create a list that contains the name of each instance 
- Configure each instance to have its own uniquely tagged name within that single resource
