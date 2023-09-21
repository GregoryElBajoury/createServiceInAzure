output "client_id" {
  description = "Client ID de l'application Azure AD."
  value = azuread_service_principal.example.application_id
}

output "client_secret" {
  description = "Secret associé au Service Principal."
  value = azuread_service_principal_password.example.value
}

output "tenant_id" {
  description = "ID du tenant Azure AD actuellement utilisé."
  value = data.azurerm_client_config.example.tenant_id
}
