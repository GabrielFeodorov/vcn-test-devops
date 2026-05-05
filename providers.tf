provider "oci" {
  region = var.region
  auth   = var.auth

  tenancy_ocid     = var.auth == "ApiKey" ? var.tenancy_ocid : null
  user_ocid        = var.auth == "ApiKey" ? var.user_ocid : null
  fingerprint      = var.auth == "ApiKey" ? var.fingerprint : null
  private_key_path = var.auth == "ApiKey" ? var.private_key_path : null
}
