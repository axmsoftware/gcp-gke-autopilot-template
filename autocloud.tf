# module "autocloud-service-account" {
#   source  = "autoclouddev/autocloud-service-account/google"
#   version = "1.0.0"
#   # insert the 1 required variable here
#   project_id = "axm-gke-autopilot-starter"
# }
# From terraformer
resource "google_service_account" "axm-gcp-autocloud-sa-read" {
  account_id   = "axm-gcp-autocloud-sa-read"
  description  = "Read Only Service Account for integration between GCP and Autocloud"
  disabled     = "false"
  display_name = "axm-gcp-autocloud-sa-read"
  project      = "axm-gke-autopilot-starter"
}
# GKE Details?
resource "google_project_iam_member" "axm-gcp-autocloud-sa-read-cluster-viewer" {
  member  = "serviceAccount:axm-gcp-autocloud-sa-read@axm-gke-autopilot-starter.iam.gserviceaccount.com"
  project = "axm-gke-autopilot-starter"
  role    = "roles/container.clusterViewer"
}
resource "google_project_iam_member" "axm-gcp-autocloud-sa-read-container-viewer" {
  member  = "serviceAccount:axm-gcp-autocloud-sa-read@axm-gke-autopilot-starter.iam.gserviceaccount.com"
  project = "axm-gke-autopilot-starter"
  role    = "roles/container.viewer"
}
# Autocloud Default
resource "google_project_iam_member" "axm-gcp-autocloud-sa-read-security-reviewer" {
  member  = "serviceAccount:axm-gcp-autocloud-sa-read@axm-gke-autopilot-starter.iam.gserviceaccount.com"
  project = "axm-gke-autopilot-starter"
  role    = "roles/iam.securityReviewer"
}
resource "google_project_iam_member" "axm-gcp-autocloud-sa-read-service-usage-viewer" {
  member  = "serviceAccount:axm-gcp-autocloud-sa-read@axm-gke-autopilot-starter.iam.gserviceaccount.com"
  project = "axm-gke-autopilot-starter"
  role    = "roles/serviceusage.serviceUsageViewer"
}
resource "google_project_iam_member" "axm-gcp-autocloud-sa-read-stackdriver-accounts-viewer" {
  member  = "serviceAccount:axm-gcp-autocloud-sa-read@axm-gke-autopilot-starter.iam.gserviceaccount.com"
  project = "axm-gke-autopilot-starter"
  role    = "roles/stackdriver.accounts.viewer"
}

resource "google_project_iam_member" "axm-gcp-autocloud-sa-read-viewer" {
  member  = "serviceAccount:axm-gcp-autocloud-sa-read@axm-gke-autopilot-starter.iam.gserviceaccount.com"
  project = "axm-gke-autopilot-starter"
  role    = "roles/viewer"
}

