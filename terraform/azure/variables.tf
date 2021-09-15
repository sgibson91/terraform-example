variable "subscription_id" {
  type        = string
  description = "The ID of the Azure subscription to deploye resources into"
}

variable "prefix" {
  type        = string
  default     = "my-project"
  description = "An identifier to prepend to all resources to be created"
}

variable "location" {
  type        = string
  default     = "westeurope"
  description = "The location into which resources will be deployed"
}

variable "machine_size" {
  type = string
  default = "Standard_F2"
  description = "The type/size of virtual machine to deploy"
}
