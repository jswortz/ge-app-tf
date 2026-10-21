# ==============================================================================
# Terraform Variable Values - ServiceNow Data Connector
# ==============================================================================

project_id    = "<Your Project ID>"
location      = "global"
collection_id = "kroger_collection"

# ServiceNow Data Connector (servicenow-with-actions)
servicenow_collection_display_name      = "Kroger ServiceNow Data Connector"
servicenow_data_source                  = "servicenow"
servicenow_data_source_version          = 3
servicenow_instance_uri                 = "<Your ServiceNow Instance URI>" # e.g. https://your-instance.service-now.com
servicenow_client_id                    = "<Your Client ID>"
servicenow_client_secret                = "<Your Client Secret>"
servicenow_user_account                 = "<Your Ingestion User Account>"  # required for DATA_INGESTION
servicenow_password                     = "<Your Ingestion User Password>" # required for DATA_INGESTION
servicenow_auth_type                    = "OAUTH_PASSWORD_GRANT"           # OAUTH_PASSWORD_GRANT (Ingestion) or OAUTH (Federated)
servicenow_static_ip_enabled            = false
servicenow_refresh_interval             = "86400s"
servicenow_incremental_refresh_interval = "21600s"

servicenow_destination_key  = "url"
servicenow_destination_host = "<Your ServiceNow Instance URI>"
servicenow_destination_port = 0

servicenow_connector_modes           = ["DATA_INGESTION", "ACTIONS"]
servicenow_sync_mode                 = "PERIODIC"
servicenow_auto_run_disabled         = true
servicenow_incremental_sync_disabled = true

servicenow_create_bap_connection        = true
servicenow_action_auth_type             = "OAUTH"
servicenow_action_include_system_tables = false

servicenow_bap_supported_connector_modes = ["ACTIONS"]
servicenow_bap_enabled_actions = [
  "create_incident",
  "update_incident",
  # "create_change_request",
  # "create_task",
  # "create_service_catalog_request",
  # "update_service_catalog_request",
  # "create_request_item",
  # "update_request_item",
  # "submit_catalog_item",
  # "approve_record",
]

servicenow_entities = [
  "incident",
  "knowledge_base",
  "catalog",
  "knowledge",
  "users",
  "attachment",
]
