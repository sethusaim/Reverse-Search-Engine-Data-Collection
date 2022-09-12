#!bin/bash

groupId=$(az group show --name search_data --query id --output tsv)

az ad sp create-for-rbac --scope /subscriptions/9cb21b18-21ad-4341-a958-6b6a8b455457/resourceGroups/search_data --role Contributor --sdk-auth

registryId=$(az acr show --name searchdata --resource-group search_data --query id --output tsv)

az role assignment create --assignee 18de8c09-3a80-4f6a-ad10-5753b60b5e66 --scope /subscriptions/9cb21b18-21ad-4341-a958-6b6a8b455457/resourceGroups/search_data/providers/Microsoft.ContainerRegistry/registries/searchdata --role AcrPush

AZURE_CREDENTIALS = {
  "clientId": "18de8c09-3a80-4f6a-ad10-5753b60b5e66",
  "clientSecret": "dki8Q~wL2DuYRpV4LTjJx4OvMqlv9.dZYrQUubsh",
  "subscriptionId": "9cb21b18-21ad-4341-a958-6b6a8b455457",
  "tenantId": "c10b685a-771a-4df3-8c9f-657c45d89e26",
  "activeDirectoryEndpointUrl": "https://login.microsoftonline.com",
  "resourceManagerEndpointUrl": "https://management.azure.com/",
  "activeDirectoryGraphResourceId": "https://graph.windows.net/",
  "sqlManagementEndpointUrl": "https://management.core.windows.net:8443/",
  "galleryEndpointUrl": "https://gallery.azure.com/",
  "managementEndpointUrl": "https://management.core.windows.net/"
}

REGISTRY_LOGIN_SERVER = "search_data"

REGISTRY_USERNAME = "18de8c09-3a80-4f6a-ad10-5753b60b5e66"

REGISTRY_PASSWORD = "dki8Q~wL2DuYRpV4LTjJx4OvMqlv9.dZYrQUubsh"

RESOURCE_GROUP = "search_data"