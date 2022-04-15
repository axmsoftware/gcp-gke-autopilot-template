module "autocloud-service-account" {
  source  = "autoclouddev/autocloud-service-account/google"
  version = "1.0.0"
  # insert the 1 required variable here
  project_id = "axm-gke-autopilot-starter"
}
