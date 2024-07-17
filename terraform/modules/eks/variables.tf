variable "cluster_name" {
  description = "rakan-cluster"
  type        = string
}

variable "cluster_role_arn" {
  description = "ARN of the EKS role"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the EKS cluster"
  type        = list(string)
}
