rgs = {
    rg1 = {
        rg_name = "dev-rg"
        rg_location = "Central India"
        tags = {
            environment ="dev"
        }
    }
}
vnet = {
    vnet1 = {
        vnet_name = "dev-vnet1"
        rg_name = "dev-rg"
        rg_location = "Central India"
        address_space = ["10.0.0.0/16"]
    }
}
subnets = {
    subnet1 = {
        sub_name = "frontend-dev-subnet"
        vnet_name = "dev-vnet1"
        rg_name = "dev-rg"
        address_prefixes = ["10.0.1.0/24"]
    }
}