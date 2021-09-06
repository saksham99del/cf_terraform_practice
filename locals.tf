app_prefix           = "${var.org_name}_${var.project_name}"             #cf_sei
resource_group_name  = "${local.app_prefix}_${var.resource_group_name}"  #cf_sei_rg
storage_account_name = "${local.app_prefix}_${var.storage_account_name}" # cf_sei_sa
storage_account_name_2="${local.app_prefix}_${var.storage_account_name_2}"#cf_sei_sa_2