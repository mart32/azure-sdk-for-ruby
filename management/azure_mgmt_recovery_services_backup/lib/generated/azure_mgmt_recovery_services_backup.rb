# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'generated/azure_mgmt_recovery_services_backup/module_definition'
require 'ms_rest_azure'

module Azure::ARM::RecoveryServicesBackup
  autoload :ItemLevelRecoveryConnections,                       'generated/azure_mgmt_recovery_services_backup/item_level_recovery_connections.rb'
  autoload :Restores,                                           'generated/azure_mgmt_recovery_services_backup/restores.rb'
  autoload :ProtectionPolicyOperationStatuses,                  'generated/azure_mgmt_recovery_services_backup/protection_policy_operation_statuses.rb'
  autoload :ProtectionPolicyOperationResults,                   'generated/azure_mgmt_recovery_services_backup/protection_policy_operation_results.rb'
  autoload :ProtectionPolicies,                                 'generated/azure_mgmt_recovery_services_backup/protection_policies.rb'
  autoload :ProtectionContainerOperationResults,                'generated/azure_mgmt_recovery_services_backup/protection_container_operation_results.rb'
  autoload :ProtectionContainerRefreshOperationResults,         'generated/azure_mgmt_recovery_services_backup/protection_container_refresh_operation_results.rb'
  autoload :ProtectionContainers,                               'generated/azure_mgmt_recovery_services_backup/protection_containers.rb'
  autoload :RecoveryPoints,                                     'generated/azure_mgmt_recovery_services_backup/recovery_points.rb'
  autoload :Backups,                                            'generated/azure_mgmt_recovery_services_backup/backups.rb'
  autoload :ProtectedItemOperationStatuses,                     'generated/azure_mgmt_recovery_services_backup/protected_item_operation_statuses.rb'
  autoload :ProtectedItemOperationResults,                      'generated/azure_mgmt_recovery_services_backup/protected_item_operation_results.rb'
  autoload :ProtectedItems,                                     'generated/azure_mgmt_recovery_services_backup/protected_items.rb'
  autoload :ProtectableItems,                                   'generated/azure_mgmt_recovery_services_backup/protectable_items.rb'
  autoload :ExportJobsOperationResults,                         'generated/azure_mgmt_recovery_services_backup/export_jobs_operation_results.rb'
  autoload :JobOperationResults,                                'generated/azure_mgmt_recovery_services_backup/job_operation_results.rb'
  autoload :Jobs,                                               'generated/azure_mgmt_recovery_services_backup/jobs.rb'
  autoload :JobCancellations,                                   'generated/azure_mgmt_recovery_services_backup/job_cancellations.rb'
  autoload :JobDetails,                                         'generated/azure_mgmt_recovery_services_backup/job_details.rb'
  autoload :BackupOperationStatuses,                            'generated/azure_mgmt_recovery_services_backup/backup_operation_statuses.rb'
  autoload :BackupOperationResults,                             'generated/azure_mgmt_recovery_services_backup/backup_operation_results.rb'
  autoload :BackupEngines,                                      'generated/azure_mgmt_recovery_services_backup/backup_engines.rb'
  autoload :RecoveryServicesBackupClient,                       'generated/azure_mgmt_recovery_services_backup/recovery_services_backup_client.rb'

  module Models
    autoload :SchedulePolicy,                                     'generated/azure_mgmt_recovery_services_backup/models/schedule_policy.rb'
    autoload :RetentionPolicy,                                    'generated/azure_mgmt_recovery_services_backup/models/retention_policy.rb'
    autoload :Job,                                                'generated/azure_mgmt_recovery_services_backup/models/job.rb'
    autoload :ILRRequest,                                         'generated/azure_mgmt_recovery_services_backup/models/ilrrequest.rb'
    autoload :BMSRPQueryObject,                                   'generated/azure_mgmt_recovery_services_backup/models/bmsrpquery_object.rb'
    autoload :ProtectionPolicy,                                   'generated/azure_mgmt_recovery_services_backup/models/protection_policy.rb'
    autoload :BMSBackupEngineQueryObject,                         'generated/azure_mgmt_recovery_services_backup/models/bmsbackup_engine_query_object.rb'
    autoload :WeeklyRetentionFormat,                              'generated/azure_mgmt_recovery_services_backup/models/weekly_retention_format.rb'
    autoload :OperationStatusExtendedInfo,                        'generated/azure_mgmt_recovery_services_backup/models/operation_status_extended_info.rb'
    autoload :MonthlyRetentionSchedule,                           'generated/azure_mgmt_recovery_services_backup/models/monthly_retention_schedule.rb'
    autoload :OperationWorkerResponse,                            'generated/azure_mgmt_recovery_services_backup/models/operation_worker_response.rb'
    autoload :BMSContainerQueryObject,                            'generated/azure_mgmt_recovery_services_backup/models/bmscontainer_query_object.rb'
    autoload :WorkloadProtectableItem,                            'generated/azure_mgmt_recovery_services_backup/models/workload_protectable_item.rb'
    autoload :RestoreRequest,                                     'generated/azure_mgmt_recovery_services_backup/models/restore_request.rb'
    autoload :DpmErrorInfo,                                       'generated/azure_mgmt_recovery_services_backup/models/dpm_error_info.rb'
    autoload :KeyAndSecretDetails,                                'generated/azure_mgmt_recovery_services_backup/models/key_and_secret_details.rb'
    autoload :ProtectedItem,                                      'generated/azure_mgmt_recovery_services_backup/models/protected_item.rb'
    autoload :ProtectionPolicyQueryObject,                        'generated/azure_mgmt_recovery_services_backup/models/protection_policy_query_object.rb'
    autoload :BMSPOQueryObject,                                   'generated/azure_mgmt_recovery_services_backup/models/bmspoquery_object.rb'
    autoload :BEKDetails,                                         'generated/azure_mgmt_recovery_services_backup/models/bekdetails.rb'
    autoload :GetProtectedItemQueryObject,                        'generated/azure_mgmt_recovery_services_backup/models/get_protected_item_query_object.rb'
    autoload :KEKDetails,                                         'generated/azure_mgmt_recovery_services_backup/models/kekdetails.rb'
    autoload :AzureIaaSVMJobTaskDetails,                          'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmjob_task_details.rb'
    autoload :YearlyRetentionSchedule,                            'generated/azure_mgmt_recovery_services_backup/models/yearly_retention_schedule.rb'
    autoload :RecoveryPoint,                                      'generated/azure_mgmt_recovery_services_backup/models/recovery_point.rb'
    autoload :ResourceList,                                       'generated/azure_mgmt_recovery_services_backup/models/resource_list.rb'
    autoload :Day,                                                'generated/azure_mgmt_recovery_services_backup/models/day.rb'
    autoload :ClientScriptForConnect,                             'generated/azure_mgmt_recovery_services_backup/models/client_script_for_connect.rb'
    autoload :DailyRetentionFormat,                               'generated/azure_mgmt_recovery_services_backup/models/daily_retention_format.rb'
    autoload :InstantItemRecoveryTarget,                          'generated/azure_mgmt_recovery_services_backup/models/instant_item_recovery_target.rb'
    autoload :BackupEngineBase,                                   'generated/azure_mgmt_recovery_services_backup/models/backup_engine_base.rb'
    autoload :MabContainerExtendedInfo,                           'generated/azure_mgmt_recovery_services_backup/models/mab_container_extended_info.rb'
    autoload :OperationStatus,                                    'generated/azure_mgmt_recovery_services_backup/models/operation_status.rb'
    autoload :RetentionDuration,                                  'generated/azure_mgmt_recovery_services_backup/models/retention_duration.rb'
    autoload :DpmJobTaskDetails,                                  'generated/azure_mgmt_recovery_services_backup/models/dpm_job_task_details.rb'
    autoload :MabJobExtendedInfo,                                 'generated/azure_mgmt_recovery_services_backup/models/mab_job_extended_info.rb'
    autoload :WeeklyRetentionSchedule,                            'generated/azure_mgmt_recovery_services_backup/models/weekly_retention_schedule.rb'
    autoload :AzureIaaSVMProtectedItemExtendedInfo,               'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmprotected_item_extended_info.rb'
    autoload :BackupRequest,                                      'generated/azure_mgmt_recovery_services_backup/models/backup_request.rb'
    autoload :MabJobTaskDetails,                                  'generated/azure_mgmt_recovery_services_backup/models/mab_job_task_details.rb'
    autoload :AzureIaaSVMErrorInfo,                               'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmerror_info.rb'
    autoload :MabFileFolderProtectedItemExtendedInfo,             'generated/azure_mgmt_recovery_services_backup/models/mab_file_folder_protected_item_extended_info.rb'
    autoload :EncryptionDetails,                                  'generated/azure_mgmt_recovery_services_backup/models/encryption_details.rb'
    autoload :MabErrorInfo,                                       'generated/azure_mgmt_recovery_services_backup/models/mab_error_info.rb'
    autoload :JobQueryObject,                                     'generated/azure_mgmt_recovery_services_backup/models/job_query_object.rb'
    autoload :AzureSqlProtectedItemExtendedInfo,                  'generated/azure_mgmt_recovery_services_backup/models/azure_sql_protected_item_extended_info.rb'
    autoload :AzureIaaSVMJobExtendedInfo,                         'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmjob_extended_info.rb'
    autoload :DailyRetentionSchedule,                             'generated/azure_mgmt_recovery_services_backup/models/daily_retention_schedule.rb'
    autoload :ProtectionContainer,                                'generated/azure_mgmt_recovery_services_backup/models/protection_container.rb'
    autoload :DpmJobExtendedInfo,                                 'generated/azure_mgmt_recovery_services_backup/models/dpm_job_extended_info.rb'
    autoload :OperationResultInfoBase,                            'generated/azure_mgmt_recovery_services_backup/models/operation_result_info_base.rb'
    autoload :Resource,                                           'generated/azure_mgmt_recovery_services_backup/models/resource.rb'
    autoload :OperationStatusError,                               'generated/azure_mgmt_recovery_services_backup/models/operation_status_error.rb'
    autoload :ProtectedItemQueryObject,                           'generated/azure_mgmt_recovery_services_backup/models/protected_item_query_object.rb'
    autoload :JobResource,                                        'generated/azure_mgmt_recovery_services_backup/models/job_resource.rb'
    autoload :JobResourceList,                                    'generated/azure_mgmt_recovery_services_backup/models/job_resource_list.rb'
    autoload :WorkloadProtectableItemResource,                    'generated/azure_mgmt_recovery_services_backup/models/workload_protectable_item_resource.rb'
    autoload :WorkloadProtectableItemResourceList,                'generated/azure_mgmt_recovery_services_backup/models/workload_protectable_item_resource_list.rb'
    autoload :ProtectedItemResource,                              'generated/azure_mgmt_recovery_services_backup/models/protected_item_resource.rb'
    autoload :ProtectedItemResourceList,                          'generated/azure_mgmt_recovery_services_backup/models/protected_item_resource_list.rb'
    autoload :BackupRequestResource,                              'generated/azure_mgmt_recovery_services_backup/models/backup_request_resource.rb'
    autoload :RecoveryPointResource,                              'generated/azure_mgmt_recovery_services_backup/models/recovery_point_resource.rb'
    autoload :RecoveryPointResourceList,                          'generated/azure_mgmt_recovery_services_backup/models/recovery_point_resource_list.rb'
    autoload :ProtectionContainerResource,                        'generated/azure_mgmt_recovery_services_backup/models/protection_container_resource.rb'
    autoload :ProtectionContainerResourceList,                    'generated/azure_mgmt_recovery_services_backup/models/protection_container_resource_list.rb'
    autoload :ProtectionPolicyResource,                           'generated/azure_mgmt_recovery_services_backup/models/protection_policy_resource.rb'
    autoload :ProtectionPolicyResourceList,                       'generated/azure_mgmt_recovery_services_backup/models/protection_policy_resource_list.rb'
    autoload :RestoreRequestResource,                             'generated/azure_mgmt_recovery_services_backup/models/restore_request_resource.rb'
    autoload :ILRRequestResource,                                 'generated/azure_mgmt_recovery_services_backup/models/ilrrequest_resource.rb'
    autoload :AzureBackupServerEngine,                            'generated/azure_mgmt_recovery_services_backup/models/azure_backup_server_engine.rb'
    autoload :DpmBackupEngine,                                    'generated/azure_mgmt_recovery_services_backup/models/dpm_backup_engine.rb'
    autoload :AzureSqlContainer,                                  'generated/azure_mgmt_recovery_services_backup/models/azure_sql_container.rb'
    autoload :IaaSVMContainer,                                    'generated/azure_mgmt_recovery_services_backup/models/iaa_svmcontainer.rb'
    autoload :MabContainer,                                       'generated/azure_mgmt_recovery_services_backup/models/mab_container.rb'
    autoload :IaaSVMProtectableItem,                              'generated/azure_mgmt_recovery_services_backup/models/iaa_svmprotectable_item.rb'
    autoload :AzureIaaSVMProtectedItem,                           'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmprotected_item.rb'
    autoload :MabFileFolderProtectedItem,                         'generated/azure_mgmt_recovery_services_backup/models/mab_file_folder_protected_item.rb'
    autoload :AzureSqlProtectedItem,                              'generated/azure_mgmt_recovery_services_backup/models/azure_sql_protected_item.rb'
    autoload :IaasVMBackupRequest,                                'generated/azure_mgmt_recovery_services_backup/models/iaas_vmbackup_request.rb'
    autoload :AzureIaaSVMProtectionPolicy,                        'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmprotection_policy.rb'
    autoload :MabProtectionPolicy,                                'generated/azure_mgmt_recovery_services_backup/models/mab_protection_policy.rb'
    autoload :AzureSqlProtectionPolicy,                           'generated/azure_mgmt_recovery_services_backup/models/azure_sql_protection_policy.rb'
    autoload :IaasVMRecoveryPoint,                                'generated/azure_mgmt_recovery_services_backup/models/iaas_vmrecovery_point.rb'
    autoload :GenericRecoveryPoint,                               'generated/azure_mgmt_recovery_services_backup/models/generic_recovery_point.rb'
    autoload :IaasVMRestoreRequest,                               'generated/azure_mgmt_recovery_services_backup/models/iaas_vmrestore_request.rb'
    autoload :IaasVMILRRegistrationRequest,                       'generated/azure_mgmt_recovery_services_backup/models/iaas_vmilrregistration_request.rb'
    autoload :AzureIaaSVMJob,                                     'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmjob.rb'
    autoload :DpmJob,                                             'generated/azure_mgmt_recovery_services_backup/models/dpm_job.rb'
    autoload :MabJob,                                             'generated/azure_mgmt_recovery_services_backup/models/mab_job.rb'
    autoload :OperationResultInfo,                                'generated/azure_mgmt_recovery_services_backup/models/operation_result_info.rb'
    autoload :ExportJobsOperationResultInfo,                      'generated/azure_mgmt_recovery_services_backup/models/export_jobs_operation_result_info.rb'
    autoload :AzureIaaSComputeVMContainer,                        'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_scompute_vmcontainer.rb'
    autoload :AzureIaaSClassicComputeVMContainer,                 'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_sclassic_compute_vmcontainer.rb'
    autoload :AzureIaaSComputeVMProtectableItem,                  'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_scompute_vmprotectable_item.rb'
    autoload :AzureIaaSClassicComputeVMProtectableItem,           'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_sclassic_compute_vmprotectable_item.rb'
    autoload :AzureIaaSComputeVMProtectedItem,                    'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_scompute_vmprotected_item.rb'
    autoload :AzureIaaSClassicComputeVMProtectedItem,             'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_sclassic_compute_vmprotected_item.rb'
    autoload :OperationStatusJobExtendedInfo,                     'generated/azure_mgmt_recovery_services_backup/models/operation_status_job_extended_info.rb'
    autoload :OperationStatusProvisionILRExtendedInfo,            'generated/azure_mgmt_recovery_services_backup/models/operation_status_provision_ilrextended_info.rb'
    autoload :OperationStatusJobsExtendedInfo,                    'generated/azure_mgmt_recovery_services_backup/models/operation_status_jobs_extended_info.rb'
    autoload :LongTermSchedulePolicy,                             'generated/azure_mgmt_recovery_services_backup/models/long_term_schedule_policy.rb'
    autoload :SimpleSchedulePolicy,                               'generated/azure_mgmt_recovery_services_backup/models/simple_schedule_policy.rb'
    autoload :SimpleRetentionPolicy,                              'generated/azure_mgmt_recovery_services_backup/models/simple_retention_policy.rb'
    autoload :LongTermRetentionPolicy,                            'generated/azure_mgmt_recovery_services_backup/models/long_term_retention_policy.rb'
    autoload :BackupEngineBaseResource,                           'generated/azure_mgmt_recovery_services_backup/models/backup_engine_base_resource.rb'
    autoload :BackupEngineBaseResourceList,                       'generated/azure_mgmt_recovery_services_backup/models/backup_engine_base_resource_list.rb'
    autoload :OperationResultInfoBaseResource,                    'generated/azure_mgmt_recovery_services_backup/models/operation_result_info_base_resource.rb'
    autoload :BackupManagementType,                               'generated/azure_mgmt_recovery_services_backup/models/backup_management_type.rb'
    autoload :OperationStatusValues,                              'generated/azure_mgmt_recovery_services_backup/models/operation_status_values.rb'
    autoload :HttpStatusCode,                                     'generated/azure_mgmt_recovery_services_backup/models/http_status_code.rb'
    autoload :JobStatus,                                          'generated/azure_mgmt_recovery_services_backup/models/job_status.rb'
    autoload :JobOperationType,                                   'generated/azure_mgmt_recovery_services_backup/models/job_operation_type.rb'
    autoload :ProtectionStatus,                                   'generated/azure_mgmt_recovery_services_backup/models/protection_status.rb'
    autoload :DataSourceType,                                     'generated/azure_mgmt_recovery_services_backup/models/data_source_type.rb'
    autoload :BackupItemType,                                     'generated/azure_mgmt_recovery_services_backup/models/backup_item_type.rb'
    autoload :ProtectionState,                                    'generated/azure_mgmt_recovery_services_backup/models/protection_state.rb'
    autoload :ProtectedItemState,                                 'generated/azure_mgmt_recovery_services_backup/models/protected_item_state.rb'
    autoload :RecoveryType,                                       'generated/azure_mgmt_recovery_services_backup/models/recovery_type.rb'
    autoload :JobSupportedAction,                                 'generated/azure_mgmt_recovery_services_backup/models/job_supported_action.rb'
    autoload :MabServerType,                                      'generated/azure_mgmt_recovery_services_backup/models/mab_server_type.rb'
    autoload :WorkloadType,                                       'generated/azure_mgmt_recovery_services_backup/models/workload_type.rb'
    autoload :ScheduleRunType,                                    'generated/azure_mgmt_recovery_services_backup/models/schedule_run_type.rb'
    autoload :DayOfWeek,                                          'generated/azure_mgmt_recovery_services_backup/models/day_of_week.rb'
    autoload :RetentionDurationType,                              'generated/azure_mgmt_recovery_services_backup/models/retention_duration_type.rb'
    autoload :RetentionScheduleFormat,                            'generated/azure_mgmt_recovery_services_backup/models/retention_schedule_format.rb'
    autoload :WeekOfMonth,                                        'generated/azure_mgmt_recovery_services_backup/models/week_of_month.rb'
    autoload :MonthOfYear,                                        'generated/azure_mgmt_recovery_services_backup/models/month_of_year.rb'
  end
end
