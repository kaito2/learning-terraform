resource "google_service_account" "sample" {
  project      = "kaito2"
  account_id   = "sample"
  display_name = "Sample Service Account"
}

resource "google_project_iam_member" "sample" {
  project = "kaito2"
  role    = "roles/run.admin"
  member  = "serviceAccount:${google_service_account.sample.email}"
}
