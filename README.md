# Production-Style Amazon EKS Platform Using Terraform

## Objective
Build a repeatable and secure Amazon EKS platform using Terraform,
private worker nodes, Amazon ECR, and Kubernetes.

## AWS Region
ap-south-1 (Mumbai)

## Planned Components
- Amazon VPC across two Availability Zones
- Public and private subnets
- Amazon EKS and managed worker nodes
- IAM roles with least-privilege permissions
- Private Amazon ECR repository
- Kubernetes application deployment
- Operational validation and troubleshooting

## Security
- Keep worker nodes in private subnets.
- Restrict Kubernetes API access.
- Never commit credentials, private keys, or Terraform state.
- Review IAM permissions before deployment.

## Cost Controls
- Review AWS credits and billing before provisioning.
- Estimate EKS, EC2, EBS, networking, and load-balancer costs.
- Avoid a NAT Gateway unless justified.
- Destroy lab resources after validation.

## Status
Architecture designed. Local repository preparation in progress.
No AWS infrastructure has been provisioned by this project yet.
