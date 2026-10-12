variable "aws_region" {
  description = "AWS deployment region"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Prefix for resources belonging to this project"
  type        = string
  default     = "project1-eks-platform"
}

variable "cluster_version" {
  description = "Kubernetes version currently supported by Amazon EKS"
  type        = string
}

variable "public_access_cidrs" {
  description = "Public IP CIDRs allowed to reach the EKS API"
  type        = list(string)

  validation {
    condition = (
      length(var.public_access_cidrs) > 0 &&
      alltrue([
        for cidr in var.public_access_cidrs :
        cidr != "0.0.0.0/0"
      ])
    )
    error_message = "Provide restricted public IP CIDRs, not 0.0.0.0/0."
  }
}