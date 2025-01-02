resource "google_folder" "dev" {
  display_name = "AI_MLOPS"
  parent       = "organizations/${var.org_id}"
}

output "folder_id" {
  value = google_folder.dev.id
}
