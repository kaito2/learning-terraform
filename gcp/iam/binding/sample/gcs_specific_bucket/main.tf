resource "google_storage_bucket" "sample" {
  project = "kaito2"
  name    = "sample-bucket-kaito2"
}

resource "google_service_account" "sample" {
  project      = "kaito2"
  account_id   = "sample"
  display_name = "Sample Service Account"
}

resource "google_storage_bucket_iam_member" "sample" {
  bucket = google_storage_bucket.sample.name
  role   = "roles/storage.admin"
  member = "serviceAccount:${google_service_account.sample.email}"
}
