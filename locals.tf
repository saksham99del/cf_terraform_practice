app_prefix             = "${var.org_name}_${var.project_name}"               #cf_tf_practice
resource_group_name    = "${local.app_prefix}_${var.resource_group_name}"    #cf_tf_practice_rg
storage_account_name   = "${local.app_prefix}_${var.storage_account_prefix}_${var.storage_account_name}"   # cf_tf_practice_sa_dream11
storage_account_name_2 = "${local.app_prefix}_${var.storage_account_name_2}" #cf_tf_practice_sa_2
Function_App_Name      ="${local.app_prefix}_${var.Function_App_Name_Prefix}_${var.Function_App_Name}" #cf_tf_practice_fa_dream11
App_Service_Plan_Name="${local.app_prefix}_${var.App_Service_Plan_Name_Prefix}_${var.App_Service_Plan_Name}"#cf_tf_practice_as_dream11