locals {
  app_details = {
    display_name = "GitHub-IAC"
    account_type = false # Ceci assure que seuls les comptes de votre organisation peuvent accéder à cette application (équivalent à Single tenant)
    oauth2_flow  = true
  }

  secret_details = {
    description = "Client secret for automation"
    duration    = "8760h"  # 365 days in hours
  }
}
