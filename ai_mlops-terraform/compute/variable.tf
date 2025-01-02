variable "project_id" {
  description = "The project ID for the Google Cloud resources"
  type        = string
}

variable "network" {
  description = "VPC network name"
}

variable "subnets" {
  description = "List of subnets"
  type        = list(string)
}

variable "region" {
  description = "Region for deployment"
}
