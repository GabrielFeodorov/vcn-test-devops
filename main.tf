resource "oci_core_vcn" "this" {
  compartment_id = var.compartment_ocid
  display_name   = var.vcn_name
  dns_label      = var.vcn_dns_label
  cidr_blocks    = var.vcn_cidr_blocks
}
