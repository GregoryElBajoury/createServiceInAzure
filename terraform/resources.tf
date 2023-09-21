# Création d'une application Azure AD pour le Service Principal
resource "azuread_application" "example" {
  display_name               = local.app_details.display_name
  available_to_other_tenants = local.app_details.account_type
  oauth2_allow_implicit_flow = local.app_details.oauth2_flow
  reply_urls                 = [""]
}

# Création du Service Principal à partir de l'application Azure AD
resource "azuread_service_principal" "example" {
  application_id = azuread_application.example.application_id
}

# Création d'un secret associé au Service Principal
resource "azuread_service_principal_password" "example" {
  service_principal_id = azuread_service_principal.example.id
  description          = local.secret_details.description
  end_date_relative    = local.secret_details.duration
}
