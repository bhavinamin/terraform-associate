# [Terraform] Dec 12: Dynamic Blocks, Splat and Zipmap

### Dynamic Blocks + Beginning Modularization 
- Define a list of ingress ports: 8200, 8201, 8300, 9200, 9500
- Create an AWS security group and assign those ports as part of its ingress rule without using multiple ingress blocks
- Ensure the provider, security group, and variables are modularized in different files 
- Ensure the iterator in your dynamic block is defined for readability 



### Splat expressions & Zipmap function  
- Create three AWS IAM users
- Output their ARNS using a splat expression 
- Grab their names too and zip man names with ARNs to neatly present a name+ARN association 