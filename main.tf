

resource "azurerm_resource_group" "aksmainrg1" {
  name     = "aks-resource-group-160824"
  location = "CentralUS"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-clustermain1"
  location            = "CentralUS"
  resource_group_name = "aks-resource-group-160824"
  dns_prefix          = "aksdns"


  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_DS2_v2"
    enable_node_public_ip = true
    temporary_name_for_rotation = "tempdefault"
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
    load_balancer_sku = "standard"
  }
   depends_on = [ azurerm_resource_group.aksmainrg1 ]
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive = true
}
