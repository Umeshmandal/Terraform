# Concept 1

# dynamic-rg = {
#   rg1 = {
#     name     = "dynamic-resources"
#     location = "West Europe"
#     tags = {
#       environment = "Production"
#       company     = "cosmos"
#     }
#   }

#   rg2 = {
#     name     = "dynamic-resources1"
#     location = "West Europe"
#     tags     = {}
#   }
# }

# Concept 2

dynamic-rg = {
  rg1 = {
    name       = "dynamic-resources"
    location   = "West Europe"
    maneged_by = "terraform"
    tags = {
      environment = "Production"
      company     = "cosmos"
    }
  }

  rg2 = {
    name     = "dynamic-resources1"
    location = "West Europe"

  }
}

