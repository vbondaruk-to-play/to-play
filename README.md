# Creating AWS VPC and Auto-Scaling-Group with NLB 
## VPC and NLB 
VPC and NLB for simplicity are located on a same module  - `./modules/vpc`  
For creating AWS resources were used official Terraform AWS providers  `terraform-aws-modules/alb/aws` and `terraform-aws-modules/vpc/aws`  

##  Auto-Scaling-Group
For Auto-Scaling-Group were used generic terraform resources as well as for Launch Template  

# Usage
To run this example you need to execute:

```
$ terraform init
$ terraform plan
$ terraform apply
```