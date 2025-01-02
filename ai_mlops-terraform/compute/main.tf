resource "google_compute_instance" "vm_instance" {
  name         = "ai-mlops-instance"
  machine_type = "e2-micro"
  zone         = "${var.region}-a"
  project      = var.project_id  # Ensure project_id is set correctly

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network            = var.network
    subnetwork         = var.subnets[0]  # Subnet A
    subnetwork_project = var.project_id  # Add subnetwork_project field
    # Removed access_config to avoid assigning external IP
  }
}

resource "google_compute_instance" "vm_instance_b" {
  name         = "ai-mlops-instance-b"
  machine_type = "e2-micro"
  zone         = "${var.region}-b"
  project      = var.project_id  # Ensure project_id is set correctly

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network            = var.network
    subnetwork         = var.subnets[1]  # Subnet B
    subnetwork_project = var.project_id  # Add subnetwork_project field
    # Removed access_config to avoid assigning external IP
  }
}
