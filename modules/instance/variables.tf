#####################################################
# Activity Tracker as a service
# Copyright 2020 IBM
#####################################################

variable "service_name" {
  type        = string
  description = "The name for the service"
}

variable "plan" {
  type        = string
  description = "The type of plan the service instance should run under (lite, 7-day, 14-day, or 30-day)"
}

variable "region" {
  type        = string
  description = "Geographic location of the resource (e.g. us-south, us-east)"
}

variable "resource_group_id" {
  type        = string
  description = "ID of the Resource group where the cluster has been provisioned."
}

variable "tags" {
  type        = list(string)
  description = "Tags that should be applied to the service"
  default     = null
}

variable "parameters" {
  type        = map
  description = "Arbitrary parameters to create instance. "
  default     = null
}
