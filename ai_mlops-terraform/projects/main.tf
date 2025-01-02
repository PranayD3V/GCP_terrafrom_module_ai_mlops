resource "google_project" "ai_mlops_dev" {
  name       = "ai-mlops-dev"
  project_id = "ai-mlops-test-87f6"
  #org_id     = var.org_id
  billing_account = var.billing_account
  folder_id       = var.folder_id
  deletion_policy = "DELETE"
}

output "project_id" {
  value = google_project.ai_mlops_dev.project_id
}
