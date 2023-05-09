resource "google_storage_bucket_access_control" "public_rule" {
  bucket = var.bucket_name
  role   = "READER"
  entity = var.bucket_access_control
}

resource "google_storage_bucket" "bucket" {
  name     = var.bucket_name
  location = var.bucket_location
}

resource "google_compute_instance" "dare-id-vm" {
  name         = var.compute_instance_name
  machine_type = var.compute_instance_machine_type
  zone         = var.compute_instance_zone

  tags = ["dareit"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        managed_by_terraform = "true"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}

resource "google_sql_database_instance" "main" {
  name             = var.sq_databes_name
  database_version = var.sq_databes_version
  region           = var.project_region

  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = "db-f1-micro"
  }
}

resource "google_sql_user" "users" {
  name     = var.sql_databes_users_name
  instance = google_sql_database_instance.main.name
  password = "**********"
}
