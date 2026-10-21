# ==============================================================================
# Google Discovery Engine Search Engine / Collection Variables
# ==============================================================================

variable "project_id" {
  description = "The GCP Project ID where the Discovery Engine search engine will be created."
  type        = string
}

variable "location" {
  description = "The location of the Discovery Engine search engine."
  type        = string
  default     = "global"
}

variable "collection_id" {
  description = "The collection ID for the Discovery Engine search engine."
  type        = string
  default     = "default_collection"
}

# ==============================================================================
# ServiceNow Data Connector Specific Variables
# ==============================================================================

variable "servicenow_collection_display_name" {
  description = "Collection display name for the ServiceNow Data Connector."
  type        = string
  default     = "Kroger ServiceNow Data Connector"
}

variable "servicenow_data_source" {
  description = "Data source type for the ServiceNow Data Connector."
  type        = string
  default     = "servicenow"
}

variable "servicenow_data_source_version" {
  description = "Data source version for the ServiceNow Data Connector."
  type        = number
  default     = 3
}

variable "servicenow_instance_uri" {
  description = "Instance URL of your ServiceNow site (e.g., https://your-instance.service-now.com)."
  type        = string
}

variable "servicenow_client_id" {
  description = "ServiceNow OAuth Client ID."
  type        = string
  sensitive   = true
}

variable "servicenow_client_secret" {
  description = "ServiceNow OAuth Client Secret."
  type        = string
  sensitive   = true
}

variable "servicenow_user_account" {
  description = "ServiceNow user account / email for ingestion credentials (ROPC / OAuth Password Grant)."
  type        = string
  default     = ""
}

variable "servicenow_password" {
  description = "ServiceNow user password for ingestion credentials (ROPC / OAuth Password Grant)."
  type        = string
  sensitive   = true
  default     = ""
}

variable "servicenow_auth_type" {
  description = "Authentication type for ServiceNow connector: OAUTH_PASSWORD_GRANT (for Data Ingestion / ROPC) or OAUTH (for Federated)."
  type        = string
  default     = "OAUTH_PASSWORD_GRANT"
}

variable "servicenow_static_ip_enabled" {
  description = "Whether static IP egress is enabled for ServiceNow connections."
  type        = bool
  default     = false
}

variable "servicenow_url_suffix" {
  description = "Optional URL suffix from the Knowledge or Catalog portal link."
  type        = string
  default     = ""
}

variable "servicenow_max_qps" {
  description = "Optional maximum queries per second rate limit to send to the ServiceNow instance."
  type        = string
  default     = ""
}

variable "servicenow_sync_since" {
  description = "Optional filter to only sync incidents created after this date forward."
  type        = string
  default     = ""
}

variable "servicenow_refresh_interval" {
  description = "Refresh interval for ServiceNow Data Connector full sync."
  type        = string
  default     = "86400s"
}

variable "servicenow_incremental_refresh_interval" {
  description = "Refresh interval for ServiceNow Data Connector incremental data syncs."
  type        = string
  default     = "21600s"
}

variable "servicenow_destination_key" {
  description = "Destination config key."
  type        = string
  default     = "url"
}

variable "servicenow_destination_host" {
  description = "Destination host URL (ServiceNow instance URL)."
  type        = string
}

variable "servicenow_destination_port" {
  description = "Destination port number."
  type        = number
  default     = 0
}

variable "servicenow_connector_modes" {
  description = "Connector modes for ServiceNow Data Connector. Supported: DATA_INGESTION, ACTIONS, FEDERATED."
  type        = list(string)
  default     = ["DATA_INGESTION", "ACTIONS"]
}

variable "servicenow_sync_mode" {
  description = "Sync mode for ServiceNow Data Connector."
  type        = string
  default     = "PERIODIC"
}

variable "servicenow_auto_run_disabled" {
  description = "Whether auto run (full sync) is disabled."
  type        = bool
  default     = true
}

variable "servicenow_incremental_sync_disabled" {
  description = "Whether incremental sync is disabled."
  type        = bool
  default     = true
}

# ==============================================================================
# ServiceNow BAP & Action Configuration Variables
# ==============================================================================

variable "servicenow_create_bap_connection" {
  description = "Whether to create BAP connection for action config."
  type        = bool
  default     = true
}

variable "servicenow_action_instance_uri" {
  description = "ServiceNow instance URL for actions. If empty, servicenow_instance_uri is used."
  type        = string
  default     = ""
}

variable "servicenow_action_client_id" {
  description = "ServiceNow OAuth Client ID for actions. If empty, servicenow_client_id is used."
  type        = string
  sensitive   = true
  default     = ""
}

variable "servicenow_action_client_secret" {
  description = "ServiceNow OAuth Client Secret for actions. If empty, servicenow_client_secret is used."
  type        = string
  sensitive   = true
  default     = ""
}

variable "servicenow_action_auth_type" {
  description = "Authentication type for ServiceNow actions (typically OAUTH using authorization code grant)."
  type        = string
  default     = "OAUTH"
}

variable "servicenow_action_auth_uri" {
  description = "ServiceNow authorization endpoint URL. If empty, defaults to {instance_uri}/oauth_auth.do."
  type        = string
  default     = ""
}

variable "servicenow_action_token_uri" {
  description = "ServiceNow token endpoint URL. If empty, defaults to {instance_uri}/oauth_token.do."
  type        = string
  default     = ""
}

variable "servicenow_action_include_system_tables" {
  description = "Controls whether to expose the ServiceNow system tables for actions."
  type        = bool
  default     = false
}

variable "servicenow_action_portal_suffix" {
  description = "Optional default URL suffix for portals (e.g., 'sp')."
  type        = string
  default     = ""
}

variable "servicenow_action_knowledge_portal_suffix" {
  description = "Optional URL suffix for knowledge portal (e.g., 'kb')."
  type        = string
  default     = ""
}

variable "servicenow_action_catalog_portal_suffix" {
  description = "Optional URL suffix for catalog portal (e.g., 'csm')."
  type        = string
  default     = ""
}

variable "servicenow_action_incident_portal_suffix" {
  description = "Optional URL suffix for incident portal (e.g., 'ip')."
  type        = string
  default     = ""
}

variable "servicenow_action_public_host_url" {
  description = "Optional public host URL of your ServiceNow instance to use for constructing links."
  type        = string
  default     = ""
}

variable "servicenow_bap_supported_connector_modes" {
  description = "Supported connector modes for BAP config."
  type        = list(string)
  default     = ["ACTIONS"]
}

variable "servicenow_bap_enabled_actions" {
  description = "List of enabled actions for ServiceNow BAP config (e.g., create_incident, update_incident)."
  type        = list(string)
  default = [
    "create_incident",
    "update_incident",
  ]
}

variable "servicenow_entities" {
  description = "List of entity names to sync or federate for ServiceNow (incident, knowledge_base, catalog, knowledge, users, attachment)."
  type        = list(string)
  default = [
    "incident",
    "knowledge_base",
    "catalog",
    "knowledge",
    "users",
    "attachment",
  ]
}
