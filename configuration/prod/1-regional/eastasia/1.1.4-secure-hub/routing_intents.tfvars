routing_intents = {
  eastasia = {
    name = "secureRouting"
    virtual_hub = {
      key = "eastasia"
    }
    next_hops = {
      policy1 = {
        name = "policy1"
        # azurerm_firewall key
        key = "eastasia"

        destinations = [
          "PrivateTraffic",
          "Internet"
        ]
      }
    }
  }
}