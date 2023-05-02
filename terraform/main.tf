module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "krehn+sandboxaccount3@amazon.com"
    AccountName               = "sandbox-aft3"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "krehn+sandboxaccount3@amazon.com"
    SSOUserFirstName          = "DritterVorname"
    SSOUserLastName           = "DritterNachname"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
