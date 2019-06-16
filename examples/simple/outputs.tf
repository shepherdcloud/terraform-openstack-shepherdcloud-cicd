output "cicd_network_id" {
  value       = "${module.shepherdcloud_cicd.cicd_network_id}"
  description = "The id of the CICD Network being created"
}

output "cicd_subnet_ids" {
  value       = "${module.shepherdcloud_cicd.cicd_subnet_ids[0]}"
  description = "The id of all CICD subnets being created"
}
