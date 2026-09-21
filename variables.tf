variable "yourname" {
  type = string
}

variable "location" {
  type    = string
  default = "East US"
}

variable "openai_location" {
  description = "Region for the Azure OpenAI account specifically. OpenAI approval/quota can be region-specific per subscription, independent of general resource quota — this may legitimately need to differ from `location`."
  type        = string
  default     = "East US"
}

variable "sql_admin_login" {
  type    = string
  default = "sqladmin"
}

variable "sql_admin_password" {
  type      = string
  sensitive = true
}

variable "alert_email" {
  description = "Email address to receive daily restock recommendations."
  type        = string
}

variable "tags" {
  type = map(string)
  default = {
    project    = "inventory-tracker"
    managed_by = "terraform"
  }
}