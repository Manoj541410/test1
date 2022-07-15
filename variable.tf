variable "Name" {
  type        = string
  description = "Application ID as per CMDB"
  validation {
    condition     = var.Name != null && can(regex("^[A-Za-z0-9_-]{1,128}$", var.Name))
    error_message = "Argument 'application_id' should contain alphanumeric characters, hyphens or underscore and can't be empty."
  }
}
