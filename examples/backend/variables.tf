## AWS Specific parameters
variable "profile" {
  description = "AWS profile"
  type        = string
}

variable "region" {
  description = "AWS Region"
  type        = string
}

## Environment and Project
variable "company" {
  type        = string
  description = "company name - will be used in tags"
  default     = null
}

variable "project" {
  description = "Project Name"
  type        = string
  default     = null
}

variable "environment" {
  type        = string
  description = "e.g. test dev prod stage"
  default     = null
}




