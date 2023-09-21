# Projet Terraform pour Azure AD

![Terraform Version](https://img.shields.io/badge/Terraform-%3E%3D0.14.0-blue)
![Azure Provider](https://img.shields.io/badge/Azure%20Provider-%3E%3D2.0-green)

Ce projet Terraform est utilisé pour créer une application Azure AD, un Service Principal et un secret associé dans Azure.

## Structure du projet

- `main.tf`: Configuration principale du projet, y compris la configuration du provider Azure.
- `resources.tf`: Définit toutes les ressources Terraform, y compris l'application Azure AD, le Service Principal et le secret associé.
- `variables.tf`: Contient les variables utilisées dans les autres fichiers de configuration.
- `outputs.tf`: Outputs fournis après l'application d'un plan Terraform.
- `data.tf`: Contient les sources de données utilisées pour obtenir des informations supplémentaires requises par la configuration.

## Prérequis

- Installer Terraform >= 0.14.0
- Droits d'administrateur Azure

## Utilisation

### Initialisation

Exécutez la commande suivante pour initialiser votre environnement Terraform :

```sh
terraform init
```

## Planification

Pour voir les actions que Terraform effectuera, exécutez :

```sh
terraform plan
```

## Application

Pour appliquer le plan et créer les ressources, exécutez :

```sh
terraform apply
```

## Nettoyage

Pour supprimer les ressources créées, exécutez :

```sh
terraform destroy
```

## Variables

`application_name`: Nom de l'application Azure AD (par défaut : "GitHub-IAC").

`secret_description`: Description du secret associé au Service Principal (par défaut : "Client secret for automation").


## Ouputs

`client-id` : L'ID client de l'application/service principal créé

`client-secret` : Le secret associé au service principal

`client-id` : L'ID du tenant dans lequel les ressources ont été créées
