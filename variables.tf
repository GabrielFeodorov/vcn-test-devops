variable "region" {
  description = "OCI region (for example: eu-frankfurt-1)."
  type        = string
}

variable "auth" {
  description = "OCI provider auth mode. Use ApiKey for local runs, ResourcePrincipal for OCI DevOps build runs."
  type        = string
  default     = "ApiKey"
}

variable "tenancy_ocid" {
  description = "Tenancy OCID (required for ApiKey auth)."
  type        = string
  default     = null
}

variable "user_ocid" {
  description = "User OCID (required for ApiKey auth)."
  type        = string
  default     = null
}

variable "fingerprint" {
  description = "API key fingerprint (required for ApiKey auth)."
  type        = string
  default     = null
}

variable "private_key_path" {
  description = "Path to private API key (required for ApiKey auth)."
  type        = string
  default     = null
}

variable "compartment_ocid" {
  description = "Compartment OCID where the VCN will be created."
  type        = string
}

variable "vcn_name" {
  description = "Display name for the VCN."
  type        = string
  default     = "demo-vcn"
}

variable "vcn_dns_label" {
  description = "DNS label for the VCN (1-15 alphanumeric characters, start with a letter)."
  type        = string
  default     = "demovcn"
}

variable "vcn_cidr_blocks" {
  description = "CIDR blocks for the VCN."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}
