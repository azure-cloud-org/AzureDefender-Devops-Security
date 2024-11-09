
/*
# Create a resource group
resource "azurerm_resource_group" "rg-defender-for-security" {
  name     = "myrg-defender-for-security"
  location = "south india"

}

##Repeated commented lines to verify configured sonarcloud quality gate rule
# Create Virtual Network
resource "azurerm_virtual_network" "myvnet-defender-for-security" {
  name                = "myvnet-defender-for-security"
  address_space       = ["10.22.0.0/24"]
  location            = azurerm_resource_group.rg-defender-for-security.location
  resource_group_name = azurerm_resource_group.rg-defender-for-security.name

}

# Create Subnet
resource "azurerm_subnet" "mysubnet-defender-for-security" {
  name                 = "mysubnet-defender-for-security"
  resource_group_name  = azurerm_resource_group.rg-defender-for-security.name
  virtual_network_name = azurerm_virtual_network.myvnet-defender-for-security.name
  address_prefixes     = ["10.22.0.0/27"]
}

##creating allow all inbound firewall rule to verify synk SAST detection
resource "azurerm_network_security_group" "example-defender-for-security" {
  name                = "example-nsg-defender-for-security"
  location            = azurerm_resource_group.rg-defender-for-security.location
  resource_group_name = azurerm_resource_group.rg-defender-for-security.name

  security_rule {
    name                       = "test123"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_subnet_network_security_group_association" "example-defender-for-security" {
  subnet_id                 = azurerm_subnet.mysubnet-defender-for-security.id
  network_security_group_id = azurerm_network_security_group.example-defender-for-security.id
}

*/