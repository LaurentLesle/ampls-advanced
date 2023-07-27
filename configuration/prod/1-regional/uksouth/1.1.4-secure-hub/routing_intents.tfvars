routing_intents = {
  uksouth = {
    name = "secureRouting"
    virtual_hub = {
      key = "uksouth"
    }
    next_hops = {
      policy1 = {
        name = "policy1"
        # azurerm_firewall key
        key = "uksouth"

        destinations = [
          "PrivateTraffic",
          "Internet"
        ]
      }
    }
  }
}