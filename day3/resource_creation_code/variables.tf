
variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "Region for GCP resources"
  type        = string
}

variable "zone" {
  description = "Zone for the VM"
  type        = string
}

variable "vm_name" {
  description = "Name of the VM instance"
  type        = string
}

variable "machine_type" {
  description = "Machine type for the VM"
  type        = string
}

variable "image" {
  description = "Boot disk image"
  type        = string
}

variable "bucket_name" {
  description = "Name of the storage bucket"
  type        = string
}

variable "bucket_location" {
  description = "Location of the storage bucket"
  type        = string
}

variable "storage_class" {
  description = "Storage class of the bucket"
  type        = string
}
