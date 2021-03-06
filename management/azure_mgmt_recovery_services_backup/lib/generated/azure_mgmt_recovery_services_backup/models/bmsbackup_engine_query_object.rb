# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # The query parameters used to GET the list of backup engines.
    #
    class BMSBackupEngineQueryObject

      include MsRestAzure

      # @return [BackupManagementType] The backup management type associated
      # with the backup engine. Possible values include: 'Invalid',
      # 'AzureIaasVM', 'MAB', 'DPM', 'AzureBackupServer', 'AzureSql'
      attr_accessor :backup_management_type


      #
      # Mapper for BMSBackupEngineQueryObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BMSBackupEngineQueryObject',
          type: {
            name: 'Composite',
            class_name: 'BMSBackupEngineQueryObject',
            model_properties: {
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'Enum',
                  module: 'BackupManagementType'
                }
              }
            }
          }
        }
      end
    end
  end
end
