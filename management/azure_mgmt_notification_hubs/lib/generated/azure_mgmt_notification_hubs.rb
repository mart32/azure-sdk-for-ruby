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
require 'generated/azure_mgmt_notification_hubs/module_definition'
require 'ms_rest_azure'

module Azure::ARM::NotificationHubs
  autoload :Namespaces,                                         'generated/azure_mgmt_notification_hubs/namespaces.rb'
  autoload :NotificationHubs,                                   'generated/azure_mgmt_notification_hubs/notification_hubs.rb'
  autoload :NotificationHubsManagementClient,                   'generated/azure_mgmt_notification_hubs/notification_hubs_management_client.rb'

  module Models
    autoload :PolicykeyResource,                                  'generated/azure_mgmt_notification_hubs/models/policykey_resource.rb'
    autoload :ApnsCredential,                                     'generated/azure_mgmt_notification_hubs/models/apns_credential.rb'
    autoload :CheckAvailabilityParameters,                        'generated/azure_mgmt_notification_hubs/models/check_availability_parameters.rb'
    autoload :WnsCredential,                                      'generated/azure_mgmt_notification_hubs/models/wns_credential.rb'
    autoload :ResourceListKeys,                                   'generated/azure_mgmt_notification_hubs/models/resource_list_keys.rb'
    autoload :NamespacePatchParameters,                           'generated/azure_mgmt_notification_hubs/models/namespace_patch_parameters.rb'
    autoload :Sku,                                                'generated/azure_mgmt_notification_hubs/models/sku.rb'
    autoload :SharedAccessAuthorizationRuleProperties,            'generated/azure_mgmt_notification_hubs/models/shared_access_authorization_rule_properties.rb'
    autoload :BaiduCredential,                                    'generated/azure_mgmt_notification_hubs/models/baidu_credential.rb'
    autoload :NamespaceListResult,                                'generated/azure_mgmt_notification_hubs/models/namespace_list_result.rb'
    autoload :NotificationHubListResult,                          'generated/azure_mgmt_notification_hubs/models/notification_hub_list_result.rb'
    autoload :GcmCredential,                                      'generated/azure_mgmt_notification_hubs/models/gcm_credential.rb'
    autoload :SharedAccessAuthorizationRuleListResult,            'generated/azure_mgmt_notification_hubs/models/shared_access_authorization_rule_list_result.rb'
    autoload :MpnsCredential,                                     'generated/azure_mgmt_notification_hubs/models/mpns_credential.rb'
    autoload :Resource,                                           'generated/azure_mgmt_notification_hubs/models/resource.rb'
    autoload :AdmCredential,                                      'generated/azure_mgmt_notification_hubs/models/adm_credential.rb'
    autoload :CheckAvailabilityResult,                            'generated/azure_mgmt_notification_hubs/models/check_availability_result.rb'
    autoload :NamespaceCreateOrUpdateParameters,                  'generated/azure_mgmt_notification_hubs/models/namespace_create_or_update_parameters.rb'
    autoload :NamespaceResource,                                  'generated/azure_mgmt_notification_hubs/models/namespace_resource.rb'
    autoload :SharedAccessAuthorizationRuleCreateOrUpdateParameters, 'generated/azure_mgmt_notification_hubs/models/shared_access_authorization_rule_create_or_update_parameters.rb'
    autoload :SharedAccessAuthorizationRuleResource,              'generated/azure_mgmt_notification_hubs/models/shared_access_authorization_rule_resource.rb'
    autoload :NotificationHubCreateOrUpdateParameters,            'generated/azure_mgmt_notification_hubs/models/notification_hub_create_or_update_parameters.rb'
    autoload :NotificationHubResource,                            'generated/azure_mgmt_notification_hubs/models/notification_hub_resource.rb'
    autoload :PnsCredentialsResource,                             'generated/azure_mgmt_notification_hubs/models/pns_credentials_resource.rb'
    autoload :SkuName,                                            'generated/azure_mgmt_notification_hubs/models/sku_name.rb'
    autoload :NamespaceType,                                      'generated/azure_mgmt_notification_hubs/models/namespace_type.rb'
    autoload :AccessRights,                                       'generated/azure_mgmt_notification_hubs/models/access_rights.rb'
  end
end
