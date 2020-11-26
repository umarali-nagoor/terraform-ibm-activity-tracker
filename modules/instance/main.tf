#####################################################
# activity tracker as a service
# Copyright 2020 IBM
#####################################################

resource "ibm_resource_instance" "at_instance" {
  name              = var.service_name
  service           = "logdnaat"
  plan              = var.plan
  location          = var.region
  resource_group_id = (var.resource_group_id != null ? var.resource_group_id : null)
  tags              = (var.tags != null ? var.tags : null)
  parameters        = (var.parameters != null ? var.parameters : null)

  timeouts {
    create = "15m"
    update = "15m"
    delete = "15m"
  }
}