
output "vm_public_ip" {
  description = "Public IP of the VM instance"
  value       = google_compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip
}

output "bucket_url" {
  description = "The URL of the created GCS bucket"
  value       = "gs://${google_storage_bucket.storage_bucket.name}"
}
