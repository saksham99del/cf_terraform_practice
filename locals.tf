app_prefix             = "${var.org_name}_${var.project_name}"                                                  #cf_tf_practice
resource_group_name    = "${local.app_prefix}_${var.resource_group_name}"                                       #cf_tf_practice_rg
storage_account_name   = "${local.app_prefix}_${var.storage_account_prefix}_${var.storage_account_name}"        # cf_tf_practice_sa_dream11
storage_account_name_2 = "${local.app_prefix}_${var.storage_account_name_2}"                                    #cf_tf_practice_sa_2
function_app_name      = "${local.app_prefix}_${var.function_app_name_prefix}_${var.function_app_name}"         #cf_tf_practice_fa_dream11
app_service_plan_name  = "${local.app_prefix}_${var.app_service_plan_name_prefix}_${var.app_service_plan_name}" #cf_tf_practice_as_dream11
app_insight_name       = "${local.app_prefix}_${var.app_insight_name_prefix}_${var.app_insight_name}"