terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.35.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials_file)

  project = var.project_id
  region  = var.region
  zone    = var.zone
}

resource "google_compute_network" "vpc_network" {
  name = "${var.prefix}-vpc"
}

resource "google_compute_instance" "vm_instance" {
  name         = "${var.prefix}-vm"
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
      image = var.machine_image
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {}
  }
}
