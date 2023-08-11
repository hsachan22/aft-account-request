# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "sandbox_account_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "hsachan+sandbox1@calance.com"
    AccountName  = "hsachan-sandbox-01"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandbox"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "hsachan+sandbox1@calance.com"
    SSOUserFirstName = "Hardik"
    SSOUserLastName  = "Sachan"
  }

  account_tags = {
    "ABC:Owner"       = "hsachan@calance.com"
    "ABC:Environment" = "Dev"
    "ABC:Project"     = "123456"
  }

  account_customizations_name = "hsachan-sandbox-01"
}
