#**************************** CICD network ******************************
module "cicd_network" {
  #source              = "../terraform-os-network/"
  source              = "git@github.com:shepherdcloud/terraform-openstack-network.git"
  network_name        = "${var.project_name}-cicd-net"
  network_tags        = ["${var.project_name}", "cicd", "shepherdcloud"]
  network_description = "${var.network_description}"

  subnets = [
    {
      subnet_name       = "${var.project_name}-cicd-subnet"
      subnet_cidr       = "10.10.13.0/24"
      subnet_ip_version = 4
      subnet_tags       = "${var.project_name}, cicd, shepherdcloud"
    }
  ]
}

#**************************** Router setup *******************************
resource "openstack_networking_router_interface_v2" "router_interface_cicd" {
  router_id = "${var.project_router_id}"
  subnet_id = "${module.cicd_network.subnet_ids[0]}"
}