variable "org_id" {
  description = "The organization ID"
  type        = string
}

variable "billing_account" {
  description = "The billing account ID"
  type        = string
}

variable "folder_id" {
  description = "The folder ID where the project will be created"
  type        = string
}

variable "project_id" {
  description = "The ID for the GCP project"
  type        = string
}

variable "region" {
  description = "The region for the resources in the project"
  type        = string
}
