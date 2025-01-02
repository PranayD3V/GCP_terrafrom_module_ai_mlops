module "folders" {
  source = "./folders"
  org_id = var.org_id
  region = var.region
}

module "network" {
  source     = "./network"
  project_id = module.projects.project_id
  region     = var.region
}

module "compute" {
  source      = "./compute"
  project_id  = module.projects.project_id
  network     = module.network.network_name
  subnets     = module.network.subnets
  region      = var.region
}

module "projects" {
  source          = "./projects"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.folders.folder_id
  project_id      = "ai-mlops-test-87f6"
  region          = var.region
}

resource "google_project_service" "compute" {
  project = module.projects.project_id
  service = "compute.googleapis.com"
}

resource "google_project_service" "cloud_resource_manager" {
  project = module.projects.project_id
  service = "cloudresourcemanager.googleapis.com"
}

resource "google_project_service" "cloud_billing" {
  project = module.projects.project_id
  service = "cloudbilling.googleapis.com"
}

resource "google_project_service" "iam" {
  project = module.projects.project_id
  service = "iam.googleapis.com"
}

resource "google_project_service" "cloud_storage" {
  project = module.projects.project_id
  service = "storage.googleapis.com"
}

resource "google_project_service" "cloud_dns" {
  project = module.projects.project_id
  service = "dns.googleapis.com"
}
