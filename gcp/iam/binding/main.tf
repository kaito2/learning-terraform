resource "google_service_account" "bind_sample" {
  project      = "kaito2"
  account_id   = "bind-sample"
  display_name = "Bind sample"
  description  = "Sample service account for role binding"
}

resource "google_service_account_iam_member" "sample" {
  service_account_id = google_service_account.bind_sample.name
  role               = "roles/run.admin"
  member             = "serviceAccount:${google_service_account.bind_sample.name}"
}
