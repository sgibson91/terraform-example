variable "project_id" {
  type        = string
  description = "The ID of the project to deploy to"
}

variable "credentials_file" {
  type        = string
  description = "The path to a Google Cloud credentials file"
}

variable "prefix" {
  type        = string
  default     = "my-project"
  description = "An identifier to prepend to all resources to be created"
}

variable "region" {
  type        = string
  default     = "us-central1"
  description = "The GCP region the resources will be deployed to"
}

variable "zone" {
  type        = string
  default     = "us-central1-b"
  description = "The GCP zone the resources will be deployed to"
}

variable "machine_type" {
  type        = string
  default     = "f1-micro"
  description = "The type/size of VM to deploy"
}

variable "machine_image" {
  type        = string
  default     = "debian-cloud/debian-9"
  description = "The image to install onto the VM"
}
