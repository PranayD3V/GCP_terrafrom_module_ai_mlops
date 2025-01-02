resource "google_compute_network" "vpc_network" {
  name    = "custom-vpc-ai-mlops"
  project = var.project_id
}

resource "google_compute_subnetwork" "subnet_a" {
  name          = "subnet-a"
  ip_cidr_range = "10.0.1.0/24"
  region        = var.region
  network       = google_compute_network.vpc_network.self_link
  project       = var.project_id
}

resource "google_compute_subnetwork" "subnet_b" {
  name          = "subnet-b"
  ip_cidr_range = "10.0.2.0/24"
  region        = var.region
  network       = google_compute_network.vpc_network.self_link
  project       = var.project_id
}

# Outputs
output "network_name" {
  description = "The name of the VPC network"
  value       = google_compute_network.vpc_network.name
}

output "subnets" {
  description = "List of subnet names"
  value       = [
    google_compute_subnetwork.subnet_a.name,
    google_compute_subnetwork.subnet_b.name
  ]
}
