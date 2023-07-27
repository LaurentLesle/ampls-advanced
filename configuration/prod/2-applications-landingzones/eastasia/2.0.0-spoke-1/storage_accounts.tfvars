storage_accounts = {
  sa1 = {
    name               = "sa1spokeea01212"
    resource_group_key = "spoke"
    # Account types are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2. Defaults to StorageV2
    account_kind = "BlobStorage"
    # Account Tier options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid.
    account_tier = "Standard"
    #  Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS
    account_replication_type = "LRS" # https://docs.microsoft.com/en-us/azure/storage/common/storage-redundancy
    # tags = {
    #   environment = "dev"
    #   team        = "IT"
    #   ##
    # }
    allow_nested_items_to_be_public = false
    public_network_access_enabled   = false

    private_endpoints = {
      blob = {
        name               = "sa1"
        resource_group_key = "spoke"

        # lz_key     = ""
        subnet_key = "pep"

        private_service_connection = {
          name                 = "sa1"
          is_manual_connection = false
          subresource_names = [
            "blob"
          ]
        }

        private_dns = {
          lz_key = "private_dns_zones_global"
          keys = [
            "privatelink.blob.core.windows.net"
          ]
        }
      }
    }
  }
}