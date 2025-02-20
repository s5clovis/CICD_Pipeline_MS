# container.tf

resource "azurerm_container_group" "docker_container" {
  name                = "example-container-group"
  location            = azurerm_resource_group.RG.location
  resource_group_name = azurerm_resource_group.RG.name
  ip_address_type     = "Public"
  os_type             = "Linux"

  container {
    name   = "example-container"
    image  = "${var.dockerhub_username}/myapp:latest" # Use the variable here
    cpu    = "1"
    memory = "1.5"

    ports {
      port     = 80
      protocol = "TCP"
    }
  }

  # Add Docker Hub credentials for private images
  image_registry_credential {
    username = var.dockerhub_username
    password = var.dockerhub_password
    server   = "docker.io" # Docker Hub registry server
  }

  tags = {
    environment = "production"
  }
}