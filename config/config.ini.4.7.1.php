; <?php exit; ?> DO NOT REMOVE THIS LINE
; file automatically generated or modified by Matomo; you can manually override the default values in global.ini.php by redefining them in this file.
[database]
host = "$MATOMO_HOST"
username = "$MATOMO_USERNAME"
password = "$MATOMO_PASSWORD"
dbname = "$MATOMO_DATABASE"
tables_prefix = "matomo_"
adapter = "MYSQLI"

[log]
log_writers[] = "file"

[Debug]
enable_sql_profiler = 1

[Development]
enabled = 1
disable_merged_assets = 1

[General]
segments_subquery_cache_limit = 1000000
segments_subquery_cache_ttl = 10800
show_multisites_sparklines = 0
anonymous_user_enable_use_segments_API = 0
browser_archiving_disabled_enforce = 1
enable_create_realtime_segments = 0
adding_segment_requires_access = "admin"
process_new_segments_from = "segment_last_edit_time"
API_datatable_default_limit = 30
time_before_today_archive_considered_outdated = 2700
time_before_week_archive_considered_outdated = 10800
time_before_month_archive_considered_outdated = 32400
time_before_year_archive_considered_outdated = 64800
time_before_range_archive_considered_outdated = 10800
enable_browser_archiving_triggering = 0
archiving_custom_ranges[] = "2022-01-01,2022-03-31"
enable_sql_optimize_queries = 0
purge_date_range_archives_after_X_days = 365
enable_framed_pages = 1
enable_framed_settings = 1
noreply_email_address = "noreply@matomo.dev"
emails_enabled = 0
datatable_archiving_maximum_rows_referrers = 5000
datatable_archiving_maximum_rows_subtable_referrers = 3000
datatable_archiving_maximum_rows_actions = 3000
datatable_archiving_maximum_rows_subtable_actions = 3000
datatable_archiving_maximum_rows_site_search = 5000
datatable_archiving_maximum_rows_events = 3000
datatable_archiving_maximum_rows_subtable_events = 3000
live_widget_refresh_after_seconds = 30
live_widget_visitor_count_last_minutes = 1
live_visitor_profile_max_visits_to_aggregate = 10
live_query_max_execution_time = 300
multisites_refresh_after_seconds = 0
show_update_notification_to_superusers_only = 1
assume_secure_protocol = 0
enable_trusted_host_check = 0
enable_plugins_admin = 0
enable_installer = 0
enable_general_settings_admin = 0
enable_internet_features = 0
enable_auto_update = 0
rearchive_reports_in_past_last_n_months = 0
always_archive_data_range = 0
cors_domains[] = "*"
datatable_archiving_maximum_rows_custom_variables = 3000
datatable_archiving_maximum_rows_subtable_custom_variables = 3000
enable_marketplace = 0
enable_plugin_update_communication = 0
proxy_client_headers[] = "HTTP_X_FORWARDED_FOR"
session_save_handler = "dbtable"
use_max_statement_time_for_mariadb = 1

[Deletelogs]
delete_logs_enable = 1
delete_logs_older_than = 180

[mail]
defaultHostnameIfEmpty = "$SMTP_HOST"
transport = "smtp"
port = "$SMTP_PORT"
host = "$SMTP_HOST"
type = "LOGIN"
username = "$SMTP_USERNAME"
password = "$SMTP_PASSWORD"

[Plugins]
Plugins[] = "CoreVue"
Plugins[] = "CorePluginsAdmin"
Plugins[] = "CoreAdminHome"
Plugins[] = "CoreHome"
Plugins[] = "WebsiteMeasurable"
Plugins[] = "IntranetMeasurable"
Plugins[] = "Diagnostics"
Plugins[] = "CoreVisualizations"
Plugins[] = "Proxy"
Plugins[] = "API"
Plugins[] = "Widgetize"
Plugins[] = "Transitions"
Plugins[] = "LanguagesManager"
Plugins[] = "Actions"
Plugins[] = "Dashboard"
Plugins[] = "MultiSites"
Plugins[] = "Referrers"
Plugins[] = "UserLanguage"
Plugins[] = "DevicesDetection"
Plugins[] = "Goals"
Plugins[] = "Ecommerce"
Plugins[] = "SEO"
Plugins[] = "Events"
Plugins[] = "UserCountry"
Plugins[] = "GeoIp2"
Plugins[] = "VisitsSummary"
Plugins[] = "VisitFrequency"
Plugins[] = "VisitTime"
Plugins[] = "VisitorInterest"
Plugins[] = "RssWidget"
Plugins[] = "Monolog"
Plugins[] = "Login"
Plugins[] = "TwoFactorAuth"
Plugins[] = "UsersManager"
Plugins[] = "SitesManager"
Plugins[] = "Installation"
Plugins[] = "CoreUpdater"
Plugins[] = "CoreConsole"
Plugins[] = "ScheduledReports"
Plugins[] = "UserCountryMap"
Plugins[] = "Live"
Plugins[] = "PrivacyManager"
Plugins[] = "ImageGraph"
Plugins[] = "Annotations"
Plugins[] = "Overlay"
Plugins[] = "SegmentEditor"
Plugins[] = "Insights"
Plugins[] = "Morpheus"
Plugins[] = "Contents"
Plugins[] = "BulkTracking"
Plugins[] = "Resolution"
Plugins[] = "DevicePlugins"
Plugins[] = "Heartbeat"
Plugins[] = "Intl"
Plugins[] = "ProfessionalServices"
Plugins[] = "UserId"
Plugins[] = "CustomJsTracker"
Plugins[] = "Tour"
Plugins[] = "PagePerformance"
Plugins[] = "CustomDimensions"
Plugins[] = "DBStats"
Plugins[] = "MobileAppMeasurable"
Plugins[] = "TagManager"
Plugins[] = "ActivityLog"
Plugins[] = "AdminNotification"
Plugins[] = "CustomAlerts"
Plugins[] = "CustomOptOut"
Plugins[] = "CustomReports"
Plugins[] = "CustomVariables"
Plugins[] = "DBHealth"
Plugins[] = "DeviceDetectorCache"
Plugins[] = "ExtraTools"
Plugins[] = "FormAnalytics"
Plugins[] = "Funnels"
Plugins[] = "GroupPermissions"
Plugins[] = "HeatmapSessionRecording"
Plugins[] = "InvalidateReports"
Plugins[] = "LogViewer"
Plugins[] = "MarketingCampaignsReporting"
Plugins[] = "MediaAnalytics"
Plugins[] = "MultiChannelConversionAttribution"
Plugins[] = "QueuedTracking"
Plugins[] = "RollUpReporting"
Plugins[] = "SearchEngineKeywordsPerformance"
Plugins[] = "SegmentEditorUI"
Plugins[] = "SingleDigitalGateway"
Plugins[] = "TasksTimetable"
Plugins[] = "UserConsole"
Plugins[] = "UserFeedback"
Plugins[] = "UsersFlow"
Plugins[] = "VisitorGenerator"

[PluginsInstalled]
PluginsInstalled[] = "Diagnostics"
PluginsInstalled[] = "DBStats"
PluginsInstalled[] = "Login"
PluginsInstalled[] = "CoreAdminHome"
PluginsInstalled[] = "UsersManager"
PluginsInstalled[] = "SitesManager"
PluginsInstalled[] = "Installation"
PluginsInstalled[] = "Monolog"
PluginsInstalled[] = "Intl"
PluginsInstalled[] = "CorePluginsAdmin"
PluginsInstalled[] = "CoreHome"
PluginsInstalled[] = "WebsiteMeasurable"
PluginsInstalled[] = "CoreVisualizations"
PluginsInstalled[] = "Proxy"
PluginsInstalled[] = "API"
PluginsInstalled[] = "Transitions"
PluginsInstalled[] = "Actions"
PluginsInstalled[] = "Referrers"
PluginsInstalled[] = "UserLanguage"
PluginsInstalled[] = "DevicesDetection"
PluginsInstalled[] = "Goals"
PluginsInstalled[] = "SEO"
PluginsInstalled[] = "Events"
PluginsInstalled[] = "UserCountry"
PluginsInstalled[] = "GeoIp2"
PluginsInstalled[] = "VisitsSummary"
PluginsInstalled[] = "VisitFrequency"
PluginsInstalled[] = "VisitTime"
PluginsInstalled[] = "VisitorInterest"
PluginsInstalled[] = "CoreUpdater"
PluginsInstalled[] = "CoreConsole"
PluginsInstalled[] = "UserCountryMap"
PluginsInstalled[] = "Live"
PluginsInstalled[] = "ImageGraph"
PluginsInstalled[] = "Annotations"
PluginsInstalled[] = "Insights"
PluginsInstalled[] = "Morpheus"
PluginsInstalled[] = "Contents"
PluginsInstalled[] = "DevicePlugins"
PluginsInstalled[] = "UserId"
PluginsInstalled[] = "CustomJsTracker"
PluginsInstalled[] = "ExtraTools"
PluginsInstalled[] = "LanguagesManager"
PluginsInstalled[] = "SegmentEditor"
PluginsInstalled[] = "Dashboard"
PluginsInstalled[] = "ScheduledReports"
PluginsInstalled[] = "PrivacyManager"
PluginsInstalled[] = "CustomVariables"
PluginsInstalled[] = "IntranetMeasurable"
PluginsInstalled[] = "Widgetize"
PluginsInstalled[] = "MultiSites"
PluginsInstalled[] = "Ecommerce"
PluginsInstalled[] = "RssWidget"
PluginsInstalled[] = "TwoFactorAuth"
PluginsInstalled[] = "MobileMessaging"
PluginsInstalled[] = "Overlay"
PluginsInstalled[] = "BulkTracking"
PluginsInstalled[] = "Resolution"
PluginsInstalled[] = "Heartbeat"
PluginsInstalled[] = "ProfessionalServices"
PluginsInstalled[] = "QueuedTracking"
PluginsInstalled[] = "TagManager"
PluginsInstalled[] = "UserConsole"
PluginsInstalled[] = "ActivityLog"
PluginsInstalled[] = "CustomAlerts"
PluginsInstalled[] = "CustomDimensions"
PluginsInstalled[] = "CustomReports"
PluginsInstalled[] = "FormAnalytics"
PluginsInstalled[] = "Funnels"
PluginsInstalled[] = "GroupPermissions"
PluginsInstalled[] = "MediaAnalytics"
PluginsInstalled[] = "MultiChannelConversionAttribution"
PluginsInstalled[] = "RollUpReporting"
PluginsInstalled[] = "SearchEngineKeywordsPerformance"
PluginsInstalled[] = "UsersFlow"
PluginsInstalled[] = "CustomOptOut"
PluginsInstalled[] = "MobileAppMeasurable"
PluginsInstalled[] = "MarketingCampaignsReporting"
PluginsInstalled[] = "DeviceDetectorCache"
PluginsInstalled[] = "InvalidateReports"
PluginsInstalled[] = "TasksTimetable"
PluginsInstalled[] = "HeatmapSessionRecording"
PluginsInstalled[] = "LogViewer"
PluginsInstalled[] = "AdminNotification"
PluginsInstalled[] = "UserFeedback"
PluginsInstalled[] = "SingleDigitalGateway"
PluginsInstalled[] = "DBHealth"
PluginsInstalled[] = "CoreVue"
PluginsInstalled[] = "Tour"
PluginsInstalled[] = "PagePerformance"
PluginsInstalled[] = "SegmentEditorUI"
PluginsInstalled[] = "VisitorGenerator"

[QueuedTracking]
notify_queue_threshold_single_queue = 250000
numQueueWorkers = 16
numRequestsToProcess = 5
processDuringTrackingRequest = 1
queueEnabled = 1
redisDatabase = 0
redisHost = "redis"
redisPassword = 0
redisPort = 6379

[CustomReports]
datatable_archiving_maximum_rows_custom_reports = 500
datatable_archiving_maximum_rows_subtable_custom_reports = 500
custom_reports_validate_report_content_all_websites = 1
custom_reports_always_show_unique_visitors = 0
custom_reports_max_execution_time = 0
custom_reports_disabled_dimensions = ""
custom_reports_periods_force_aggregate_report_unique_metrics_evolution = ""

[Funnels]
funnels_num_max_rows_in_actions = 100
funnels_num_max_rows_in_referrers = 50
funnels_num_max_rows_populate_at_once = 60000

[MediaAnalytics]
media_analytics_exclude_query_parameters = "enablejsapi,player_id"
datatable_archiving_maximum_rows_media = 1000
datatable_archiving_maximum_rows_subtable_media = 1000
enable_event_tracking_by_default = 1

[MultiChannelConversionAttribution]
default_day_prior_to_conversion = 30
available_days_prior_to_conversion = "7,30,60,90"
datatable_archiving_maximum_rows = 500
datatable_archiving_maximum_rows_subtable = 500

[UsersFlow]
UsersFlow_num_max_steps = 10
UsersFlow_num_max_rows_in_actions = 100
UsersFlow_num_max_links_per_interaction = 5000

[DeviceDetectorCache]
num_cache_entries = 200000
access_log_path = "/var/log/httpd/access_log"
access_log_regex = "/^(\\S+) (\\S+) (\\S+) (\\S+) \\[([^:]+):(\\d+:\\d+:\\d+) ([^\\]]+)\\] \\&quot;(\\S+) (.*?) (\\S+)\\&quot; (\\S+) (\\S+) &quot;([^&quot;]*)&quot; &quot;([^&quot;]*)&quot; (\\d+)&#36;/"
regex_match_entry = 14

[HeatmapSessionRecording]
add_tracking_code_only_when_needed = 1
session_recording_sample_limits = "50,100,250,500,1000,2000,5000"
load_css_from_db = 1

[VisitorGenerator]
use_http = 1

[SingleDigitalGateway]
env = "stage"