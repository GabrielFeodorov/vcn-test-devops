output "vcn_id" {
  description = "Created VCN OCID."
  value       = oci_core_vcn.this.id
}

output "vcn_name" {
  description = "Created VCN name."
  value       = oci_core_vcn.this.display_name
}
