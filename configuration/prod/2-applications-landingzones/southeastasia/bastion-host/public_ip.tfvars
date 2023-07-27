
public_ip_addresses = {

  bastion = {
    name                    = "bastion-rg1-pip1"
    resource_group_key      = "bastion"
    sku                     = "Standard"
    allocation_method       = "Static"
    ip_version              = "IPv4"
    idle_timeout_in_minutes = "4"
  }

}

