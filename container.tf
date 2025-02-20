# container.tf

resource "azurerm_container_group" "docker_container" {
  name                = "my-container-group"
  location            = azurerm_resource_group.RG.location
  resource_group_name = azurerm_resource_group.RG.name
  os_type             = "Linux"

  container {
    name   = "myapp-container"
    image  = "${var.dockerhub_username}/myapp:latest" # Docker Hub Image
    cpu    = "0.5"
    memory = "1.5"

    ports {
      port     = 80
      protocol = "TCP"
    }
  }

  tags = {
    environment = "production"
  }
}
