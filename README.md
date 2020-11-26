# IBM activity tracker Terraform Module

This is a collection of modules that make it easier to provision a activity tracker as a service on IBM Cloud Platform:
* [activity tracker](modules/activity_tracker)


## Compatibility

This module is meant for use with Terraform 0.12.

## Usage

Basic usage is as follows for creation of activity tracker instance:

```hcl

provider "ibm" {
}

data "ibm_resource_group" "res_group" {
  name = var.resource_group
}

module "activity-tracker_instance" {
  source  = "terraform-ibm-modules/activity-tracker/ibm//modules/instance"
  
  service_name        = var.service_name
  plan                = var.plan
  region              = var.region
  resource_group_id   = data.ibm_resource_group.res_group.id
  parameters          = var.parameters
  tags                = var.tags
}

```

## Requirements

### Terraform plugins

- [Terraform](https://www.terraform.io/downloads.html) 0.12
- [terraform-provider-ibm](https://github.com/IBM-Cloud/terraform-provider-ibm) 

## Install

### Terraform

Be sure you have the correct Terraform version (0.12), you can choose the binary here:
- https://releases.hashicorp.com/terraform/

### Terraform plugins

Be sure you have the compiled plugins on $HOME/.terraform.d/plugins/

- [terraform-provider-ibm](https://github.com/IBM-Cloud/terraform-provider-ibm) 
