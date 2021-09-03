app_prefix          = "${var.org_name}_${var.project_name}"
resource_group_name = "${local.app_prefix}_${var.resource_group_name}" 
storage_account_name= "${local.app_prefix}_${var.storage_account_name}" # cg_