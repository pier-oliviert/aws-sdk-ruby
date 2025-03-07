# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::OpenSearchService
  module Types

    # Information about an Amazon OpenSearch Service domain.
    #
    # @note When making an API call, you may pass AWSDomainInformation
    #   data as a hash:
    #
    #       {
    #         owner_id: "OwnerId",
    #         domain_name: "DomainName", # required
    #         region: "Region",
    #       }
    #
    # @!attribute [rw] owner_id
    #   The Amazon Web Services account ID of the domain owner.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   Name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region in which the domain is located.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AWSDomainInformation AWS API Documentation
    #
    class AWSDomainInformation < Struct.new(
      :owner_id,
      :domain_name,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `AcceptInboundConnection`
    # operation.
    #
    # @note When making an API call, you may pass AcceptInboundConnectionRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the inbound connection to accept.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AcceptInboundConnectionRequest AWS API Documentation
    #
    class AcceptInboundConnectionRequest < Struct.new(
      :connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the accepted inbound connection.
    #
    # @!attribute [rw] connection
    #   Information about the accepted inbound connection.
    #   @return [Types::InboundConnection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AcceptInboundConnectionResponse AWS API Documentation
    #
    class AcceptInboundConnectionResponse < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occurred because user does not have permissions to access the
    # resource. Returns HTTP status code 403.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Aws::EmptyStructure; end

    # The configured access rules for the domain's search endpoint, and the
    # current status of those rules.
    #
    # @!attribute [rw] options
    #   The access policy configured for the domain. Access policies can be
    #   resource-based, IP-based, or IAM-based. For more information, see
    #   [Configuring access policies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-access-policies
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the access policy for the domain.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AccessPoliciesStatus AWS API Documentation
    #
    class AccessPoliciesStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `AddTags` operation. Specifies the
    # tags to attach to the domain.
    #
    # @note When making an API call, you may pass AddTagsRequest
    #   data as a hash:
    #
    #       {
    #         arn: "ARN", # required
    #         tag_list: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] arn
    #   Amazon Resource Name (ARN) for the OpenSearch Service domain to
    #   which you want to attach resource tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_list
    #   List of resource tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AddTagsRequest AWS API Documentation
    #
    class AddTagsRequest < Struct.new(
      :arn,
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # List of limits that are specific to a given instance type.
    #
    # @!attribute [rw] limit_name
    #   * `MaximumNumberOfDataNodesSupported` - This attribute only applies
    #     to master nodes and specifies the maximum number of data nodes of
    #     a given instance type a master node can support.
    #
    #   * `MaximumNumberOfDataNodesWithoutMasterNode` - This attribute only
    #     applies to data nodes and specifies the maximum number of data
    #     nodes of a given instance type can exist without a master node
    #     governing them.
    #   @return [String]
    #
    # @!attribute [rw] limit_values
    #   The values of the additional instance type limits.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AdditionalLimit AWS API Documentation
    #
    class AdditionalLimit < Struct.new(
      :limit_name,
      :limit_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status of the advanced options for the specified domain. The following
    # options are available:
    #
    # * `"rest.action.multi.allow_explicit_index": "true" | "false"` - Note
    #   the use of a string rather than a boolean. Specifies whether
    #   explicit references to indexes are allowed inside the body of HTTP
    #   requests. If you want to configure access policies for domain
    #   sub-resources, such as specific indexes and domain APIs, you must
    #   disable this property. Default is true.
    #
    # * `"indices.fielddata.cache.size": "80" ` - Note the use of a string
    #   rather than a boolean. Specifies the percentage of heap space
    #   allocated to field data. Default is unbounded.
    #
    # * `"indices.query.bool.max_clause_count": "1024"` - Note the use of a
    #   string rather than a boolean. Specifies the maximum number of
    #   clauses allowed in a Lucene boolean query. Default is 1,024. Queries
    #   with more than the permitted number of clauses result in a
    #   `TooManyClauses` error.
    #
    # * `"override_main_response_version": "true" | "false"` - Note the use
    #   of a string rather than a boolean. Specifies whether the domain
    #   reports its version as 7.10 to allow Elasticsearch OSS clients and
    #   plugins to continue working with it. Default is false when creating
    #   a domain and true when upgrading a domain.
    #
    # For more information, see [Advanced cluster parameters][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options
    #
    # @!attribute [rw] options
    #   The status of advanced options for the specified domain.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   The status of advanced options for the specified domain.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AdvancedOptionsStatus AWS API Documentation
    #
    class AdvancedOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for fine-grained access control settings.
    #
    # @!attribute [rw] enabled
    #   True if fine-grained access control is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] internal_user_database_enabled
    #   True if the internal user database is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] saml_options
    #   Container for information about the SAML configuration for
    #   OpenSearch Dashboards.
    #   @return [Types::SAMLOptionsOutput]
    #
    # @!attribute [rw] anonymous_auth_disable_date
    #   Date and time when the migration period will be disabled. Only
    #   necessary when [enabling fine-grained access control on an existing
    #   domain][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html#fgac-enabling-existing
    #   @return [Time]
    #
    # @!attribute [rw] anonymous_auth_enabled
    #   True if a 30-day migration period is enabled, during which
    #   administrators can create role mappings. Only necessary when
    #   [enabling fine-grained access control on an existing domain][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html#fgac-enabling-existing
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AdvancedSecurityOptions AWS API Documentation
    #
    class AdvancedSecurityOptions < Struct.new(
      :enabled,
      :internal_user_database_enabled,
      :saml_options,
      :anonymous_auth_disable_date,
      :anonymous_auth_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options for enabling and configuring fine-grained access control. For
    # more information, see [Fine-grained access control in Amazon
    # OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html
    #
    # @note When making an API call, you may pass AdvancedSecurityOptionsInput
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         internal_user_database_enabled: false,
    #         master_user_options: {
    #           master_user_arn: "ARN",
    #           master_user_name: "Username",
    #           master_user_password: "Password",
    #         },
    #         saml_options: {
    #           enabled: false,
    #           idp: {
    #             metadata_content: "SAMLMetadata", # required
    #             entity_id: "SAMLEntityId", # required
    #           },
    #           master_user_name: "Username",
    #           master_backend_role: "BackendRole",
    #           subject_key: "String",
    #           roles_key: "String",
    #           session_timeout_minutes: 1,
    #         },
    #         anonymous_auth_enabled: false,
    #       }
    #
    # @!attribute [rw] enabled
    #   True to enable fine-grained access control.
    #   @return [Boolean]
    #
    # @!attribute [rw] internal_user_database_enabled
    #   True to enable the internal user database.
    #   @return [Boolean]
    #
    # @!attribute [rw] master_user_options
    #   Container for information about the master user.
    #   @return [Types::MasterUserOptions]
    #
    # @!attribute [rw] saml_options
    #   Container for information about the SAML configuration for
    #   OpenSearch Dashboards.
    #   @return [Types::SAMLOptionsInput]
    #
    # @!attribute [rw] anonymous_auth_enabled
    #   True to enable a 30-day migration period during which administrators
    #   can create role mappings. Only necessary when [enabling fine-grained
    #   access control on an existing domain][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/fgac.html#fgac-enabling-existing
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AdvancedSecurityOptionsInput AWS API Documentation
    #
    class AdvancedSecurityOptionsInput < Struct.new(
      :enabled,
      :internal_user_database_enabled,
      :master_user_options,
      :saml_options,
      :anonymous_auth_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of fine-grained access control settings for a domain.
    #
    # @!attribute [rw] options
    #   Container for fine-grained access control settings.
    #   @return [Types::AdvancedSecurityOptions]
    #
    # @!attribute [rw] status
    #   Status of the fine-grained access control settings for a domain.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AdvancedSecurityOptionsStatus AWS API Documentation
    #
    class AdvancedSecurityOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to the `AssociatePackage`
    # operation.
    #
    # @note When making an API call, you may pass AssociatePackageRequest
    #   data as a hash:
    #
    #       {
    #         package_id: "PackageID", # required
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] package_id
    #   Internal ID of the package to associate with a domain. Use
    #   `DescribePackages` to find this value.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   Name of the domain to associate the package with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AssociatePackageRequest AWS API Documentation
    #
    class AssociatePackageRequest < Struct.new(
      :package_id,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the response returned by the `AssociatePackage`
    # operation.
    #
    # @!attribute [rw] domain_package_details
    #   Information about a package that is associated with a domain.
    #   @return [Types::DomainPackageDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AssociatePackageResponse AWS API Documentation
    #
    class AssociatePackageResponse < Struct.new(
      :domain_package_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AuthorizeVpcEndpointAccessRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         account: "AWSAccount", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the OpenSearch Service domain to provide access to.
    #   @return [String]
    #
    # @!attribute [rw] account
    #   The Amazon Web Services account ID to grant access to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AuthorizeVpcEndpointAccessRequest AWS API Documentation
    #
    class AuthorizeVpcEndpointAccessRequest < Struct.new(
      :domain_name,
      :account)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authorized_principal
    #   Information about the Amazon Web Services account or service that
    #   was provided access to the domain.
    #   @return [Types::AuthorizedPrincipal]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AuthorizeVpcEndpointAccessResponse AWS API Documentation
    #
    class AuthorizeVpcEndpointAccessResponse < Struct.new(
      :authorized_principal)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Amazon Web Services account or service that has
    # access to an Amazon OpenSearch Service domain through the use of an
    # interface VPC endpoint.
    #
    # @!attribute [rw] principal_type
    #   The type of principal.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The [IAM principal][1] that is allowed access to the domain.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AuthorizedPrincipal AWS API Documentation
    #
    class AuthorizedPrincipal < Struct.new(
      :principal_type,
      :principal)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Auto-Tune action. For more information, see
    # [Auto-Tune for Amazon OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html
    #
    # @!attribute [rw] auto_tune_type
    #   The type of Auto-Tune action.
    #   @return [String]
    #
    # @!attribute [rw] auto_tune_details
    #   Details about an Auto-Tune action.
    #   @return [Types::AutoTuneDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AutoTune AWS API Documentation
    #
    class AutoTune < Struct.new(
      :auto_tune_type,
      :auto_tune_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies details about a scheduled Auto-Tune action. For more
    # information, see [Auto-Tune for Amazon OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html
    #
    # @!attribute [rw] scheduled_auto_tune_details
    #   Container for details about a scheduled Auto-Tune action.
    #   @return [Types::ScheduledAutoTuneDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AutoTuneDetails AWS API Documentation
    #
    class AutoTuneDetails < Struct.new(
      :scheduled_auto_tune_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Auto-Tune maintenance schedule. For more information, see
    # [Auto-Tune for Amazon OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html
    #
    # @note When making an API call, you may pass AutoTuneMaintenanceSchedule
    #   data as a hash:
    #
    #       {
    #         start_at: Time.now,
    #         duration: {
    #           value: 1,
    #           unit: "HOURS", # accepts HOURS
    #         },
    #         cron_expression_for_recurrence: "String",
    #       }
    #
    # @!attribute [rw] start_at
    #   The Epoch timestamp at which the Auto-Tune maintenance schedule
    #   starts.
    #   @return [Time]
    #
    # @!attribute [rw] duration
    #   The duration of the maintenance schedule. For example, `"Duration":
    #   \{"Value": 2, "Unit": "HOURS"\}`.
    #   @return [Types::Duration]
    #
    # @!attribute [rw] cron_expression_for_recurrence
    #   A cron expression for a recurring maintenance schedule during which
    #   Auto-Tune can deploy changes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AutoTuneMaintenanceSchedule AWS API Documentation
    #
    class AutoTuneMaintenanceSchedule < Struct.new(
      :start_at,
      :duration,
      :cron_expression_for_recurrence)
      SENSITIVE = []
      include Aws::Structure
    end

    # Auto-Tune settings when updating a domain. For more information, see
    # [Auto-Tune for Amazon OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html
    #
    # @note When making an API call, you may pass AutoTuneOptions
    #   data as a hash:
    #
    #       {
    #         desired_state: "ENABLED", # accepts ENABLED, DISABLED
    #         rollback_on_disable: "NO_ROLLBACK", # accepts NO_ROLLBACK, DEFAULT_ROLLBACK
    #         maintenance_schedules: [
    #           {
    #             start_at: Time.now,
    #             duration: {
    #               value: 1,
    #               unit: "HOURS", # accepts HOURS
    #             },
    #             cron_expression_for_recurrence: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] desired_state
    #   Whether Auto-Tune is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] rollback_on_disable
    #   When disabling Auto-Tune, specify `NO_ROLLBACK` to retain all prior
    #   Auto-Tune settings or `DEFAULT_ROLLBACK` to revert to the OpenSearch
    #   Service defaults. If you specify `DEFAULT_ROLLBACK`, you must
    #   include a `MaintenanceSchedule` in the request. Otherwise,
    #   OpenSearch Service is unable to perform the rollback.
    #   @return [String]
    #
    # @!attribute [rw] maintenance_schedules
    #   A list of maintenance schedules during which Auto-Tune can deploy
    #   changes.
    #   @return [Array<Types::AutoTuneMaintenanceSchedule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AutoTuneOptions AWS API Documentation
    #
    class AutoTuneOptions < Struct.new(
      :desired_state,
      :rollback_on_disable,
      :maintenance_schedules)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options for configuring Auto-Tune. For more information, see
    # [Auto-Tune for Amazon OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html
    #
    # @note When making an API call, you may pass AutoTuneOptionsInput
    #   data as a hash:
    #
    #       {
    #         desired_state: "ENABLED", # accepts ENABLED, DISABLED
    #         maintenance_schedules: [
    #           {
    #             start_at: Time.now,
    #             duration: {
    #               value: 1,
    #               unit: "HOURS", # accepts HOURS
    #             },
    #             cron_expression_for_recurrence: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] desired_state
    #   Whether Auto-Tune is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] maintenance_schedules
    #   A list of maintenance schedules during which Auto-Tune can deploy
    #   changes. Maintenance schedules are overwrite, not append. If your
    #   request includes no schedules, the request deletes all existing
    #   schedules. To preserve existing schedules, make a call to
    #   `DescribeDomainConfig` first and use the `MaintenanceSchedules`
    #   portion of the response as the basis for this section.
    #   @return [Array<Types::AutoTuneMaintenanceSchedule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AutoTuneOptionsInput AWS API Documentation
    #
    class AutoTuneOptionsInput < Struct.new(
      :desired_state,
      :maintenance_schedules)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Auto-Tune settings for a domain, displayed when enabling or
    # disabling Auto-Tune.
    #
    # @!attribute [rw] state
    #   The current state of Auto-Tune on the domain.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Any errors that occurred while enabling or disabling Auto-Tune.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AutoTuneOptionsOutput AWS API Documentation
    #
    class AutoTuneOptionsOutput < Struct.new(
      :state,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Auto-Tune status for the domain.
    #
    # @!attribute [rw] options
    #   Auto-Tune settings for updating a domain.
    #   @return [Types::AutoTuneOptions]
    #
    # @!attribute [rw] status
    #   The current status of Auto-Tune for a domain.
    #   @return [Types::AutoTuneStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AutoTuneOptionsStatus AWS API Documentation
    #
    class AutoTuneOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The current status of Auto-Tune for the domain. For more information,
    # see [Auto-Tune for Amazon OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html
    #
    # @!attribute [rw] creation_date
    #   Date and time when Auto-Tune was enabled for the domain.
    #   @return [Time]
    #
    # @!attribute [rw] update_date
    #   Date and time when the Auto-Tune options were last updated for the
    #   domain.
    #   @return [Time]
    #
    # @!attribute [rw] update_version
    #   The latest version of the Auto-Tune options.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The current state of Auto-Tune on the domain.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Any errors that occurred while enabling or disabling Auto-Tune.
    #   @return [String]
    #
    # @!attribute [rw] pending_deletion
    #   Indicates whether the domain is being deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/AutoTuneStatus AWS API Documentation
    #
    class AutoTuneStatus < Struct.new(
      :creation_date,
      :update_date,
      :update_version,
      :state,
      :error_message,
      :pending_deletion)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occurred while processing the request.
    #
    # @!attribute [rw] message
    #   A description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/BaseException AWS API Documentation
    #
    class BaseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to cancel a service software
    # update.
    #
    # @note When making an API call, you may pass CancelServiceSoftwareUpdateRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   Name of the OpenSearch Service domain that you want to cancel the
    #   service software update on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CancelServiceSoftwareUpdateRequest AWS API Documentation
    #
    class CancelServiceSoftwareUpdateRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the response to a `CancelServiceSoftwareUpdate`
    # operation. Contains the status of the update.
    #
    # @!attribute [rw] service_software_options
    #   Container for the state of your domain relative to the latest
    #   service software.
    #   @return [Types::ServiceSoftwareOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CancelServiceSoftwareUpdateResponse AWS API Documentation
    #
    class CancelServiceSoftwareUpdateResponse < Struct.new(
      :service_software_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for information about a configuration change happening on a
    # domain.
    #
    # @!attribute [rw] change_id
    #   The ID of the configuration change.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message corresponding to the status of the configuration change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ChangeProgressDetails AWS API Documentation
    #
    class ChangeProgressDetails < Struct.new(
      :change_id,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Progress details for each stage of a domain update.
    #
    # @!attribute [rw] name
    #   The name of the stage.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the stage.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the stage.
    #   @return [String]
    #
    # @!attribute [rw] last_updated
    #   The most recent updated timestamp of the stage.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ChangeProgressStage AWS API Documentation
    #
    class ChangeProgressStage < Struct.new(
      :name,
      :status,
      :description,
      :last_updated)
      SENSITIVE = []
      include Aws::Structure
    end

    # The progress details of a specific domain configuration change.
    #
    # @!attribute [rw] change_id
    #   The unique change identifier associated with a specific domain
    #   configuration change.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time at which the configuration change is made on the domain.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The overall status of the domain configuration change.
    #   @return [String]
    #
    # @!attribute [rw] pending_properties
    #   The list of properties in the domain configuration change that are
    #   still pending.
    #   @return [Array<String>]
    #
    # @!attribute [rw] completed_properties
    #   The list of properties in the domain configuration change that have
    #   completed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] total_number_of_stages
    #   The total number of stages required for the configuration change.
    #   @return [Integer]
    #
    # @!attribute [rw] change_progress_stages
    #   The specific stages that the domain is going through to perform the
    #   configuration change.
    #   @return [Array<Types::ChangeProgressStage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ChangeProgressStatusDetails AWS API Documentation
    #
    class ChangeProgressStatusDetails < Struct.new(
      :change_id,
      :start_time,
      :status,
      :pending_properties,
      :completed_properties,
      :total_number_of_stages,
      :change_progress_stages)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the cluster configuration of an OpenSearch Service
    # domain. For more information, see [Creating and managing Amazon
    # OpenSearch Service domains][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html
    #
    # @note When making an API call, you may pass ClusterConfig
    #   data as a hash:
    #
    #       {
    #         instance_type: "m3.medium.search", # accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #         instance_count: 1,
    #         dedicated_master_enabled: false,
    #         zone_awareness_enabled: false,
    #         zone_awareness_config: {
    #           availability_zone_count: 1,
    #         },
    #         dedicated_master_type: "m3.medium.search", # accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #         dedicated_master_count: 1,
    #         warm_enabled: false,
    #         warm_type: "ultrawarm1.medium.search", # accepts ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search
    #         warm_count: 1,
    #         cold_storage_options: {
    #           enabled: false, # required
    #         },
    #       }
    #
    # @!attribute [rw] instance_type
    #   Instance type of data nodes in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   Number of dedicated master nodes in the cluster. This number must be
    #   greater than 1, otherwise you receive a validation exception.
    #   @return [Integer]
    #
    # @!attribute [rw] dedicated_master_enabled
    #   Indicates whether dedicated master nodes are enabled for the
    #   cluster.`True` if the cluster will use a dedicated master
    #   node.`False` if the cluster will not.
    #   @return [Boolean]
    #
    # @!attribute [rw] zone_awareness_enabled
    #   Indicates whether multiple Availability Zones are enabled. For more
    #   information, see [Configuring a multi-AZ domain in Amazon OpenSearch
    #   Service][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-multiaz.html
    #   @return [Boolean]
    #
    # @!attribute [rw] zone_awareness_config
    #   Container for zone awareness configuration options. Only required if
    #   `ZoneAwarenessEnabled` is `true`.
    #   @return [Types::ZoneAwarenessConfig]
    #
    # @!attribute [rw] dedicated_master_type
    #   OpenSearch Service instance type of the dedicated master nodes in
    #   the cluster.
    #   @return [String]
    #
    # @!attribute [rw] dedicated_master_count
    #   Number of dedicated master nodes in the cluster. This number must be
    #   greater than 1, otherwise you receive a validation exception.
    #   @return [Integer]
    #
    # @!attribute [rw] warm_enabled
    #   Whether to enable warm storage for the cluster.
    #   @return [Boolean]
    #
    # @!attribute [rw] warm_type
    #   The instance type for the cluster's warm nodes.
    #   @return [String]
    #
    # @!attribute [rw] warm_count
    #   The number of warm nodes in the cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] cold_storage_options
    #   Container for cold storage configuration options.
    #   @return [Types::ColdStorageOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ClusterConfig AWS API Documentation
    #
    class ClusterConfig < Struct.new(
      :instance_type,
      :instance_count,
      :dedicated_master_enabled,
      :zone_awareness_enabled,
      :zone_awareness_config,
      :dedicated_master_type,
      :dedicated_master_count,
      :warm_enabled,
      :warm_type,
      :warm_count,
      :cold_storage_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The cluster configuration status for a domain.
    #
    # @!attribute [rw] options
    #   Cluster configuration options for the specified domain.
    #   @return [Types::ClusterConfig]
    #
    # @!attribute [rw] status
    #   The status of cluster configuration options for the specified
    #   domain.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ClusterConfigStatus AWS API Documentation
    #
    class ClusterConfigStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters required to enable Cognito authentication
    # for an OpenSearch Service domain. For more information, see
    # [Configuring Amazon Cognito authentication for OpenSearch
    # Dashboards][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html
    #
    # @note When making an API call, you may pass CognitoOptions
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         user_pool_id: "UserPoolId",
    #         identity_pool_id: "IdentityPoolId",
    #         role_arn: "RoleArn",
    #       }
    #
    # @!attribute [rw] enabled
    #   Whether to enable or disable Amazon Cognito authentication for
    #   OpenSearch Dashboards.
    #   @return [Boolean]
    #
    # @!attribute [rw] user_pool_id
    #   The Amazon Cognito user pool ID that you want OpenSearch Service to
    #   use for OpenSearch Dashboards authentication.
    #   @return [String]
    #
    # @!attribute [rw] identity_pool_id
    #   The Amazon Cognito identity pool ID that you want OpenSearch Service
    #   to use for OpenSearch Dashboards authentication.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The `AmazonOpenSearchServiceCognitoAccess` role that allows
    #   OpenSearch Service to configure your user pool and identity pool.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CognitoOptions AWS API Documentation
    #
    class CognitoOptions < Struct.new(
      :enabled,
      :user_pool_id,
      :identity_pool_id,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the Cognito options for the specified domain.
    #
    # @!attribute [rw] options
    #   Cognito options for the specified domain.
    #   @return [Types::CognitoOptions]
    #
    # @!attribute [rw] status
    #   The status of the Cognito options for the specified domain.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CognitoOptionsStatus AWS API Documentation
    #
    class CognitoOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters required to enable cold storage for an
    # OpenSearch Service domain. For more information, see [Cold storage for
    # Amazon OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cold-storage.html
    #
    # @note When making an API call, you may pass ColdStorageOptions
    #   data as a hash:
    #
    #       {
    #         enabled: false, # required
    #       }
    #
    # @!attribute [rw] enabled
    #   Whether to enable or disable cold storage on the domain.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ColdStorageOptions AWS API Documentation
    #
    class ColdStorageOptions < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # A map of OpenSearch or Elasticsearch versions and the versions you can
    # upgrade them to.
    #
    # @!attribute [rw] source_version
    #   The current version that the OpenSearch Service domain is running.
    #   @return [String]
    #
    # @!attribute [rw] target_versions
    #   The possible versions that you can upgrade the domain to.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CompatibleVersionsMap AWS API Documentation
    #
    class CompatibleVersionsMap < Struct.new(
      :source_version,
      :target_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occurred because the client attempts to remove a resource
    # that is currently in use. Returns HTTP status code 409.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ConflictException AWS API Documentation
    #
    class ConflictException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         engine_version: "VersionString",
    #         cluster_config: {
    #           instance_type: "m3.medium.search", # accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #           instance_count: 1,
    #           dedicated_master_enabled: false,
    #           zone_awareness_enabled: false,
    #           zone_awareness_config: {
    #             availability_zone_count: 1,
    #           },
    #           dedicated_master_type: "m3.medium.search", # accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #           dedicated_master_count: 1,
    #           warm_enabled: false,
    #           warm_type: "ultrawarm1.medium.search", # accepts ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search
    #           warm_count: 1,
    #           cold_storage_options: {
    #             enabled: false, # required
    #           },
    #         },
    #         ebs_options: {
    #           ebs_enabled: false,
    #           volume_type: "standard", # accepts standard, gp2, io1, gp3
    #           volume_size: 1,
    #           iops: 1,
    #           throughput: 1,
    #         },
    #         access_policies: "PolicyDocument",
    #         snapshot_options: {
    #           automated_snapshot_start_hour: 1,
    #         },
    #         vpc_options: {
    #           subnet_ids: ["String"],
    #           security_group_ids: ["String"],
    #         },
    #         cognito_options: {
    #           enabled: false,
    #           user_pool_id: "UserPoolId",
    #           identity_pool_id: "IdentityPoolId",
    #           role_arn: "RoleArn",
    #         },
    #         encryption_at_rest_options: {
    #           enabled: false,
    #           kms_key_id: "KmsKeyId",
    #         },
    #         node_to_node_encryption_options: {
    #           enabled: false,
    #         },
    #         advanced_options: {
    #           "String" => "String",
    #         },
    #         log_publishing_options: {
    #           "INDEX_SLOW_LOGS" => {
    #             cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn",
    #             enabled: false,
    #           },
    #         },
    #         domain_endpoint_options: {
    #           enforce_https: false,
    #           tls_security_policy: "Policy-Min-TLS-1-0-2019-07", # accepts Policy-Min-TLS-1-0-2019-07, Policy-Min-TLS-1-2-2019-07
    #           custom_endpoint_enabled: false,
    #           custom_endpoint: "DomainNameFqdn",
    #           custom_endpoint_certificate_arn: "ARN",
    #         },
    #         advanced_security_options: {
    #           enabled: false,
    #           internal_user_database_enabled: false,
    #           master_user_options: {
    #             master_user_arn: "ARN",
    #             master_user_name: "Username",
    #             master_user_password: "Password",
    #           },
    #           saml_options: {
    #             enabled: false,
    #             idp: {
    #               metadata_content: "SAMLMetadata", # required
    #               entity_id: "SAMLEntityId", # required
    #             },
    #             master_user_name: "Username",
    #             master_backend_role: "BackendRole",
    #             subject_key: "String",
    #             roles_key: "String",
    #             session_timeout_minutes: 1,
    #           },
    #           anonymous_auth_enabled: false,
    #         },
    #         tag_list: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         auto_tune_options: {
    #           desired_state: "ENABLED", # accepts ENABLED, DISABLED
    #           maintenance_schedules: [
    #             {
    #               start_at: Time.now,
    #               duration: {
    #                 value: 1,
    #                 unit: "HOURS", # accepts HOURS
    #               },
    #               cron_expression_for_recurrence: "String",
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] domain_name
    #   Name of the OpenSearch Service domain to create. Domain names are
    #   unique across the domains owned by an account within an Amazon Web
    #   Services Region.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   String of format Elasticsearch\_X.Y or OpenSearch\_X.Y to specify
    #   the engine version for the OpenSearch Service domain. For example,
    #   `OpenSearch_1.0` or `Elasticsearch_7.9`. For more information, see
    #   [Creating and managing Amazon OpenSearch Service domains][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomains
    #   @return [String]
    #
    # @!attribute [rw] cluster_config
    #   Container for the cluster configuration of a domain.
    #   @return [Types::ClusterConfig]
    #
    # @!attribute [rw] ebs_options
    #   Container for the parameters required to enable EBS-based storage
    #   for an OpenSearch Service domain.
    #   @return [Types::EBSOptions]
    #
    # @!attribute [rw] access_policies
    #   Identity and Access Management (IAM) policy document specifying the
    #   access policies for the new domain.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_options
    #   DEPRECATED. Container for the parameters required to configure
    #   automated snapshots of domain indexes.
    #   @return [Types::SnapshotOptions]
    #
    # @!attribute [rw] vpc_options
    #   Container for the values required to configure VPC access domains.
    #   If you don't specify these values, OpenSearch Service creates the
    #   domain with a public endpoint. For more information, see [Launching
    #   your Amazon OpenSearch Service domains using a VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html
    #   @return [Types::VPCOptions]
    #
    # @!attribute [rw] cognito_options
    #   Key-value pairs to configure Amazon Cognito authentication. For more
    #   information, see [Configuring Amazon Cognito authentication for
    #   OpenSearch Dashboards][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html
    #   @return [Types::CognitoOptions]
    #
    # @!attribute [rw] encryption_at_rest_options
    #   Key-value pairs to enable encryption at rest.
    #   @return [Types::EncryptionAtRestOptions]
    #
    # @!attribute [rw] node_to_node_encryption_options
    #   Enables node-to-node encryption.
    #   @return [Types::NodeToNodeEncryptionOptions]
    #
    # @!attribute [rw] advanced_options
    #   Key-value pairs to specify advanced configuration options. The
    #   following key-value pairs are supported:
    #
    #   * `"rest.action.multi.allow_explicit_index": "true" | "false"` -
    #     Note the use of a string rather than a boolean. Specifies whether
    #     explicit references to indexes are allowed inside the body of HTTP
    #     requests. If you want to configure access policies for domain
    #     sub-resources, such as specific indexes and domain APIs, you must
    #     disable this property. Default is true.
    #
    #   * `"indices.fielddata.cache.size": "80" ` - Note the use of a string
    #     rather than a boolean. Specifies the percentage of heap space
    #     allocated to field data. Default is unbounded.
    #
    #   * `"indices.query.bool.max_clause_count": "1024"` - Note the use of
    #     a string rather than a boolean. Specifies the maximum number of
    #     clauses allowed in a Lucene boolean query. Default is 1,024.
    #     Queries with more than the permitted number of clauses result in a
    #     `TooManyClauses` error.
    #
    #   * `"override_main_response_version": "true" | "false"` - Note the
    #     use of a string rather than a boolean. Specifies whether the
    #     domain reports its version as 7.10 to allow Elasticsearch OSS
    #     clients and plugins to continue working with it. Default is false
    #     when creating a domain and true when upgrading a domain.
    #
    #   For more information, see [Advanced cluster parameters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] log_publishing_options
    #   Key-value pairs to configure slow log publishing.
    #   @return [Hash<String,Types::LogPublishingOption>]
    #
    # @!attribute [rw] domain_endpoint_options
    #   Additional options for the domain endpoint, such as whether to
    #   require HTTPS for all traffic.
    #   @return [Types::DomainEndpointOptions]
    #
    # @!attribute [rw] advanced_security_options
    #   Options for fine-grained access control.
    #   @return [Types::AdvancedSecurityOptionsInput]
    #
    # @!attribute [rw] tag_list
    #   List of tags to add to the domain upon creation.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] auto_tune_options
    #   Options for Auto-Tune.
    #   @return [Types::AutoTuneOptionsInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CreateDomainRequest AWS API Documentation
    #
    class CreateDomainRequest < Struct.new(
      :domain_name,
      :engine_version,
      :cluster_config,
      :ebs_options,
      :access_policies,
      :snapshot_options,
      :vpc_options,
      :cognito_options,
      :encryption_at_rest_options,
      :node_to_node_encryption_options,
      :advanced_options,
      :log_publishing_options,
      :domain_endpoint_options,
      :advanced_security_options,
      :tag_list,
      :auto_tune_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `CreateDomain` operation. Contains the status of the
    # newly created domain.
    #
    # @!attribute [rw] domain_status
    #   The status of the newly created domain.
    #   @return [Types::DomainStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CreateDomainResponse AWS API Documentation
    #
    class CreateDomainResponse < Struct.new(
      :domain_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `CreateOutboundConnection`
    # operation.
    #
    # @note When making an API call, you may pass CreateOutboundConnectionRequest
    #   data as a hash:
    #
    #       {
    #         local_domain_info: { # required
    #           aws_domain_information: {
    #             owner_id: "OwnerId",
    #             domain_name: "DomainName", # required
    #             region: "Region",
    #           },
    #         },
    #         remote_domain_info: { # required
    #           aws_domain_information: {
    #             owner_id: "OwnerId",
    #             domain_name: "DomainName", # required
    #             region: "Region",
    #           },
    #         },
    #         connection_alias: "ConnectionAlias", # required
    #       }
    #
    # @!attribute [rw] local_domain_info
    #   Name and Region of the source (local) domain.
    #   @return [Types::DomainInformationContainer]
    #
    # @!attribute [rw] remote_domain_info
    #   Name and Region of the destination (remote) domain.
    #   @return [Types::DomainInformationContainer]
    #
    # @!attribute [rw] connection_alias
    #   Name of the connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CreateOutboundConnectionRequest AWS API Documentation
    #
    class CreateOutboundConnectionRequest < Struct.new(
      :local_domain_info,
      :remote_domain_info,
      :connection_alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `CreateOutboundConnection` request. Contains details
    # about the newly created cross-cluster connection.
    #
    # @!attribute [rw] local_domain_info
    #   Information about the source (local) domain.
    #   @return [Types::DomainInformationContainer]
    #
    # @!attribute [rw] remote_domain_info
    #   Information about the destination (remote) domain.
    #   @return [Types::DomainInformationContainer]
    #
    # @!attribute [rw] connection_alias
    #   Name of the connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_status
    #   The status of the connection.
    #   @return [Types::OutboundConnectionStatus]
    #
    # @!attribute [rw] connection_id
    #   The unique identifier for the created outbound connection, which is
    #   used for subsequent operations on the connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CreateOutboundConnectionResponse AWS API Documentation
    #
    class CreateOutboundConnectionResponse < Struct.new(
      :local_domain_info,
      :remote_domain_info,
      :connection_alias,
      :connection_status,
      :connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for request parameters to the `CreatePackage` operation.
    #
    # @note When making an API call, you may pass CreatePackageRequest
    #   data as a hash:
    #
    #       {
    #         package_name: "PackageName", # required
    #         package_type: "TXT-DICTIONARY", # required, accepts TXT-DICTIONARY
    #         package_description: "PackageDescription",
    #         package_source: { # required
    #           s3_bucket_name: "S3BucketName",
    #           s3_key: "S3Key",
    #         },
    #       }
    #
    # @!attribute [rw] package_name
    #   Unique name for the package.
    #   @return [String]
    #
    # @!attribute [rw] package_type
    #   Type of package.
    #   @return [String]
    #
    # @!attribute [rw] package_description
    #   Description of the package.
    #   @return [String]
    #
    # @!attribute [rw] package_source
    #   The Amazon S3 location from which to import the package.
    #   @return [Types::PackageSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CreatePackageRequest AWS API Documentation
    #
    class CreatePackageRequest < Struct.new(
      :package_name,
      :package_type,
      :package_description,
      :package_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the response returned by the `CreatePackage` operation.
    #
    # @!attribute [rw] package_details
    #   Basic information about an OpenSearch Service package.
    #   @return [Types::PackageDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CreatePackageResponse AWS API Documentation
    #
    class CreatePackageResponse < Struct.new(
      :package_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateVpcEndpointRequest
    #   data as a hash:
    #
    #       {
    #         domain_arn: "DomainArn", # required
    #         vpc_options: { # required
    #           subnet_ids: ["String"],
    #           security_group_ids: ["String"],
    #         },
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] domain_arn
    #   The Amazon Resource Name (ARN) of the domain to grant access to.
    #   @return [String]
    #
    # @!attribute [rw] vpc_options
    #   Options to specify the subnets and security groups for the endpoint.
    #   @return [Types::VPCOptions]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CreateVpcEndpointRequest AWS API Documentation
    #
    class CreateVpcEndpointRequest < Struct.new(
      :domain_arn,
      :vpc_options,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_endpoint
    #   Information about the newly created VPC endpoint.
    #   @return [Types::VpcEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/CreateVpcEndpointResponse AWS API Documentation
    #
    class CreateVpcEndpointResponse < Struct.new(
      :vpc_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `DeleteDomain` operation.
    #
    # @note When making an API call, you may pass DeleteDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain you want to permanently delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeleteDomainRequest AWS API Documentation
    #
    class DeleteDomainRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The results of a `DeleteDomain` request. Contains the status of the
    # pending deletion, or a "domain not found" error if the domain and
    # all of its resources have been deleted.
    #
    # @!attribute [rw] domain_status
    #   The status of the domain being deleted.
    #   @return [Types::DomainStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeleteDomainResponse AWS API Documentation
    #
    class DeleteDomainResponse < Struct.new(
      :domain_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `DeleteInboundConnection`
    # operation.
    #
    # @note When making an API call, you may pass DeleteInboundConnectionRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the inbound connection to permanently delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeleteInboundConnectionRequest AWS API Documentation
    #
    class DeleteInboundConnectionRequest < Struct.new(
      :connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The results of a `DeleteInboundConnection` operation. Contains details
    # about the deleted inbound connection.
    #
    # @!attribute [rw] connection
    #   The deleted inbound connection.
    #   @return [Types::InboundConnection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeleteInboundConnectionResponse AWS API Documentation
    #
    class DeleteInboundConnectionResponse < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `DeleteOutboundConnection`
    # operation.
    #
    # @note When making an API call, you may pass DeleteOutboundConnectionRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #       }
    #
    # @!attribute [rw] connection_id
    #   The ID of the outbound connection you want to permanently delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeleteOutboundConnectionRequest AWS API Documentation
    #
    class DeleteOutboundConnectionRequest < Struct.new(
      :connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the deleted outbound connection.
    #
    # @!attribute [rw] connection
    #   The deleted inbound connection.
    #   @return [Types::OutboundConnection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeleteOutboundConnectionResponse AWS API Documentation
    #
    class DeleteOutboundConnectionResponse < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Deletes a package from OpenSearch Service. The package can't be
    # associated with any OpenSearch Service domain.
    #
    # @note When making an API call, you may pass DeletePackageRequest
    #   data as a hash:
    #
    #       {
    #         package_id: "PackageID", # required
    #       }
    #
    # @!attribute [rw] package_id
    #   The internal ID of the package you want to delete. Use
    #   `DescribePackages` to find this value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeletePackageRequest AWS API Documentation
    #
    class DeletePackageRequest < Struct.new(
      :package_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the response parameters to the `DeletePackage`
    # operation.
    #
    # @!attribute [rw] package_details
    #   Information about the deleted package.
    #   @return [Types::PackageDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeletePackageResponse AWS API Documentation
    #
    class DeletePackageResponse < Struct.new(
      :package_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteVpcEndpointRequest
    #   data as a hash:
    #
    #       {
    #         vpc_endpoint_id: "VpcEndpointId", # required
    #       }
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The unique identifier of the endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeleteVpcEndpointRequest AWS API Documentation
    #
    class DeleteVpcEndpointRequest < Struct.new(
      :vpc_endpoint_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_endpoint_summary
    #   Information about the deleted endpoint, including its current status
    #   (`DELETING` or `DELETE_FAILED`).
    #   @return [Types::VpcEndpointSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DeleteVpcEndpointResponse AWS API Documentation
    #
    class DeleteVpcEndpointResponse < Struct.new(
      :vpc_endpoint_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `DescribeDomainAutoTunes`
    # operation.
    #
    # @note When making an API call, you may pass DescribeDomainAutoTunesRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] domain_name
    #   Name of the domain that you want Auto-Tune details about.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to get the next page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial `DescribeDomainAutoTunes` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `DescribeDomainAutoTunes` operations, which returns results in the
    #   next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainAutoTunesRequest AWS API Documentation
    #
    class DescribeDomainAutoTunesRequest < Struct.new(
      :domain_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `DescribeDomainAutoTunes` request.
    #
    # @!attribute [rw] auto_tunes
    #   The list of setting adjustments that Auto-Tune has made to the
    #   domain.
    #   @return [Array<Types::AutoTune>]
    #
    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainAutoTunesResponse AWS API Documentation
    #
    class DescribeDomainAutoTunesResponse < Struct.new(
      :auto_tunes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `DescribeDomainChangeProgress`
    # operation.
    #
    # @note When making an API call, you may pass DescribeDomainChangeProgressRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         change_id: "GUID",
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain to get progress information for.
    #   @return [String]
    #
    # @!attribute [rw] change_id
    #   The specific change ID for which you want to get progress
    #   information. If omitted, the request returns information about the
    #   most recent configuration change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainChangeProgressRequest AWS API Documentation
    #
    class DescribeDomainChangeProgressRequest < Struct.new(
      :domain_name,
      :change_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a `DescribeDomainChangeProgress` request. Contains
    # progress information for the requested domain change.
    #
    # @!attribute [rw] change_progress_status
    #   Container for information about the stages of a configuration change
    #   happening on a domain.
    #   @return [Types::ChangeProgressStatusDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainChangeProgressResponse AWS API Documentation
    #
    class DescribeDomainChangeProgressResponse < Struct.new(
      :change_progress_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `DescribeDomainConfig` operation.
    #
    # @note When making an API call, you may pass DescribeDomainConfigRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   Name of the OpenSearch Service domain configuration that you want to
    #   describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainConfigRequest AWS API Documentation
    #
    class DescribeDomainConfigRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration information of the requested domain.
    #
    # @!attribute [rw] domain_config
    #   Container for the configuration of the OpenSearch Service domain.
    #   @return [Types::DomainConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainConfigResponse AWS API Documentation
    #
    class DescribeDomainConfigResponse < Struct.new(
      :domain_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `DescribeDomain` operation.
    #
    # @note When making an API call, you may pass DescribeDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainRequest AWS API Documentation
    #
    class DescribeDomainRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the status of the domain specified in the request.
    #
    # @!attribute [rw] domain_status
    #   List that contains the status of each specified OpenSearch Service
    #   domain.
    #   @return [Types::DomainStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainResponse AWS API Documentation
    #
    class DescribeDomainResponse < Struct.new(
      :domain_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `DescribeDomains` operation.
    #
    # @note When making an API call, you may pass DescribeDomainsRequest
    #   data as a hash:
    #
    #       {
    #         domain_names: ["DomainName"], # required
    #       }
    #
    # @!attribute [rw] domain_names
    #   Array of OpenSearch Service domain names that you want information
    #   about. If you don't specify any domains, OpenSearch Service returns
    #   information about all domains owned by the account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainsRequest AWS API Documentation
    #
    class DescribeDomainsRequest < Struct.new(
      :domain_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the status of the specified domains or all domains owned by
    # the account.
    #
    # @!attribute [rw] domain_status_list
    #   The status of the requested domains.
    #   @return [Array<Types::DomainStatus>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeDomainsResponse AWS API Documentation
    #
    class DescribeDomainsResponse < Struct.new(
      :domain_status_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `DescribeInboundConnections`
    # operation.
    #
    # @note When making an API call, you may pass DescribeInboundConnectionsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "NonEmptyString",
    #             values: ["NonEmptyString"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] filters
    #   A list of filters used to match properties for inbound cross-cluster
    #   connections.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to get the next page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial `DescribeInboundConnections` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `DescribeInboundConnections` operations, which returns results in
    #   the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeInboundConnectionsRequest AWS API Documentation
    #
    class DescribeInboundConnectionsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a list of connections matching the filter criteria.
    #
    # @!attribute [rw] connections
    #   List of inbound connections.
    #   @return [Array<Types::InboundConnection>]
    #
    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeInboundConnectionsResponse AWS API Documentation
    #
    class DescribeInboundConnectionsResponse < Struct.new(
      :connections,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `DescribeInstanceTypeLimits`
    # operation.
    #
    # @note When making an API call, you may pass DescribeInstanceTypeLimitsRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName",
    #         instance_type: "m3.medium.search", # required, accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #         engine_version: "VersionString", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain. Only specify if you need the limits for an
    #   existing domain.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The OpenSearch Service instance type for which you need limit
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   Version of OpenSearch or Elasticsearch, in the format
    #   Elasticsearch\_X.Y or OpenSearch\_X.Y. Defaults to the latest
    #   version of OpenSearch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeInstanceTypeLimitsRequest AWS API Documentation
    #
    class DescribeInstanceTypeLimitsRequest < Struct.new(
      :domain_name,
      :instance_type,
      :engine_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters received from the
    # `DescribeInstanceTypeLimits` operation.
    #
    # @!attribute [rw] limits_by_role
    #   Map that contains all applicable instance type limits.`data` refers
    #   to data nodes.`master` refers to dedicated master nodes.
    #   @return [Hash<String,Types::Limits>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeInstanceTypeLimitsResponse AWS API Documentation
    #
    class DescribeInstanceTypeLimitsResponse < Struct.new(
      :limits_by_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `DescribeOutboundConnections`
    # operation.
    #
    # @note When making an API call, you may pass DescribeOutboundConnectionsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "NonEmptyString",
    #             values: ["NonEmptyString"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] filters
    #   List of filter names and values that you can use for requests.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to get the next page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial `DescribeOutboundConnections` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `DescribeOutboundConnections` operations, which returns results in
    #   the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeOutboundConnectionsRequest AWS API Documentation
    #
    class DescribeOutboundConnectionsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a list of connections matching the filter criteria.
    #
    # @!attribute [rw] connections
    #   List of outbound connections that match the filter criteria.
    #   @return [Array<Types::OutboundConnection>]
    #
    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeOutboundConnectionsResponse AWS API Documentation
    #
    class DescribeOutboundConnectionsResponse < Struct.new(
      :connections,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter to apply to the `DescribePackage` response.
    #
    # @note When making an API call, you may pass DescribePackagesFilter
    #   data as a hash:
    #
    #       {
    #         name: "PackageID", # accepts PackageID, PackageName, PackageStatus
    #         value: ["DescribePackagesFilterValue"],
    #       }
    #
    # @!attribute [rw] name
    #   Any field from `PackageDetails`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A list of values for the specified filter field.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribePackagesFilter AWS API Documentation
    #
    class DescribePackagesFilter < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to the `DescribePackage`
    # operation.
    #
    # @note When making an API call, you may pass DescribePackagesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "PackageID", # accepts PackageID, PackageName, PackageStatus
    #             value: ["DescribePackagesFilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] filters
    #   Only returns packages that match the `DescribePackagesFilterList`
    #   values.
    #   @return [Array<Types::DescribePackagesFilter>]
    #
    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to get the next page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial `DescribePackageFilters` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `DescribePackageFilters` operations, which returns results in the
    #   next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribePackagesRequest AWS API Documentation
    #
    class DescribePackagesRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the response returned by the `DescribePackages`
    # operation.
    #
    # @!attribute [rw] package_details_list
    #   Basic information about a package.
    #   @return [Array<Types::PackageDetails>]
    #
    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribePackagesResponse AWS API Documentation
    #
    class DescribePackagesResponse < Struct.new(
      :package_details_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to a
    # `DescribeReservedInstanceOfferings` operation.
    #
    # @note When making an API call, you may pass DescribeReservedInstanceOfferingsRequest
    #   data as a hash:
    #
    #       {
    #         reserved_instance_offering_id: "GUID",
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] reserved_instance_offering_id
    #   The Reserved Instance identifier filter value. Use this parameter to
    #   show only the available instance types that match the specified
    #   reservation identifier.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to get the next page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial `DescribeReservedInstanceOfferings` operation
    #   returns a `nextToken`, you can include the returned `nextToken` in
    #   subsequent `DescribeReservedInstanceOfferings` operations, which
    #   returns results in the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeReservedInstanceOfferingsRequest AWS API Documentation
    #
    class DescribeReservedInstanceOfferingsRequest < Struct.new(
      :reserved_instance_offering_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for results of a `DescribeReservedInstanceOfferings`
    # request.
    #
    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] reserved_instance_offerings
    #   List of Reserved Instance offerings.
    #   @return [Array<Types::ReservedInstanceOffering>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeReservedInstanceOfferingsResponse AWS API Documentation
    #
    class DescribeReservedInstanceOfferingsResponse < Struct.new(
      :next_token,
      :reserved_instance_offerings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to the
    # `DescribeReservedInstances` operation.
    #
    # @note When making an API call, you may pass DescribeReservedInstancesRequest
    #   data as a hash:
    #
    #       {
    #         reserved_instance_id: "GUID",
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] reserved_instance_id
    #   The reserved instance identifier filter value. Use this parameter to
    #   show only the reservation that matches the specified reserved
    #   OpenSearch instance ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to get the next page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial `DescribeReservedInstances` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `DescribeReservedInstances` operations, which returns results in the
    #   next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeReservedInstancesRequest AWS API Documentation
    #
    class DescribeReservedInstancesRequest < Struct.new(
      :reserved_instance_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for results from `DescribeReservedInstances`
    #
    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] reserved_instances
    #   List of Reserved Instances in the current Region.
    #   @return [Array<Types::ReservedInstance>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeReservedInstancesResponse AWS API Documentation
    #
    class DescribeReservedInstancesResponse < Struct.new(
      :next_token,
      :reserved_instances)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeVpcEndpointsRequest
    #   data as a hash:
    #
    #       {
    #         vpc_endpoint_ids: ["VpcEndpointId"], # required
    #       }
    #
    # @!attribute [rw] vpc_endpoint_ids
    #   The unique identifiers of the endpoints to get information about.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeVpcEndpointsRequest AWS API Documentation
    #
    class DescribeVpcEndpointsRequest < Struct.new(
      :vpc_endpoint_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_endpoints
    #   Information about each requested VPC endpoint.
    #   @return [Array<Types::VpcEndpoint>]
    #
    # @!attribute [rw] vpc_endpoint_errors
    #   Any errors associated with the request.
    #   @return [Array<Types::VpcEndpointError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DescribeVpcEndpointsResponse AWS API Documentation
    #
    class DescribeVpcEndpointsResponse < Struct.new(
      :vpc_endpoints,
      :vpc_endpoint_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occured because the client wanted to access a not supported
    # operation. Gives http status code of 409.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DisabledOperationException AWS API Documentation
    #
    class DisabledOperationException < Aws::EmptyStructure; end

    # Container for the request parameters to the `DissociatePackage`
    # operation.
    #
    # @note When making an API call, you may pass DissociatePackageRequest
    #   data as a hash:
    #
    #       {
    #         package_id: "PackageID", # required
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] package_id
    #   Internal ID of the package to dissociate from the domain. Use
    #   `ListPackagesForDomain` to find this value.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   Name of the domain to dissociate the package from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DissociatePackageRequest AWS API Documentation
    #
    class DissociatePackageRequest < Struct.new(
      :package_id,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the response returned by an `DissociatePackage`
    # operation.
    #
    # @!attribute [rw] domain_package_details
    #   Information about a package that has been dissociated from the
    #   domain.
    #   @return [Types::DomainPackageDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DissociatePackageResponse AWS API Documentation
    #
    class DissociatePackageResponse < Struct.new(
      :domain_package_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the configuration of an OpenSearch Service domain.
    #
    # @!attribute [rw] engine_version
    #   The OpenSearch or Elasticsearch version that the domain is running.
    #   @return [Types::VersionStatus]
    #
    # @!attribute [rw] cluster_config
    #   Container for the cluster configuration of a the domain.
    #   @return [Types::ClusterConfigStatus]
    #
    # @!attribute [rw] ebs_options
    #   Container for EBS options configured for an OpenSearch Service
    #   domain.
    #   @return [Types::EBSOptionsStatus]
    #
    # @!attribute [rw] access_policies
    #   Specifies the access policies for the domain.
    #   @return [Types::AccessPoliciesStatus]
    #
    # @!attribute [rw] snapshot_options
    #   DEPRECATED. Container for parameters required to configure automated
    #   snapshots of domain indexes.
    #   @return [Types::SnapshotOptionsStatus]
    #
    # @!attribute [rw] vpc_options
    #   The current VPC options for the domain and the status of any updates
    #   to their configuration.
    #   @return [Types::VPCDerivedInfoStatus]
    #
    # @!attribute [rw] cognito_options
    #   Container for Amazon Cognito options for the domain.
    #   @return [Types::CognitoOptionsStatus]
    #
    # @!attribute [rw] encryption_at_rest_options
    #   Key-value pairs to enable encryption at rest.
    #   @return [Types::EncryptionAtRestOptionsStatus]
    #
    # @!attribute [rw] node_to_node_encryption_options
    #   Whether node-to-node encryption is enabled or disabled.
    #   @return [Types::NodeToNodeEncryptionOptionsStatus]
    #
    # @!attribute [rw] advanced_options
    #   Key-value pairs to specify advanced configuration options. For more
    #   information, see [Advanced options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options
    #   @return [Types::AdvancedOptionsStatus]
    #
    # @!attribute [rw] log_publishing_options
    #   Key-value pairs to configure slow log publishing.
    #   @return [Types::LogPublishingOptionsStatus]
    #
    # @!attribute [rw] domain_endpoint_options
    #   Additional options for the domain endpoint, such as whether to
    #   require HTTPS for all traffic.
    #   @return [Types::DomainEndpointOptionsStatus]
    #
    # @!attribute [rw] advanced_security_options
    #   Container for fine-grained access control settings for the domain.
    #   @return [Types::AdvancedSecurityOptionsStatus]
    #
    # @!attribute [rw] auto_tune_options
    #   Container for Auto-Tune settings for the domain.
    #   @return [Types::AutoTuneOptionsStatus]
    #
    # @!attribute [rw] change_progress_details
    #   Container for information about the progress of an existing
    #   configuration change.
    #   @return [Types::ChangeProgressDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DomainConfig AWS API Documentation
    #
    class DomainConfig < Struct.new(
      :engine_version,
      :cluster_config,
      :ebs_options,
      :access_policies,
      :snapshot_options,
      :vpc_options,
      :cognito_options,
      :encryption_at_rest_options,
      :node_to_node_encryption_options,
      :advanced_options,
      :log_publishing_options,
      :domain_endpoint_options,
      :advanced_security_options,
      :auto_tune_options,
      :change_progress_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options to configure a custom endpoint for an OpenSearch Service
    # domain.
    #
    # @note When making an API call, you may pass DomainEndpointOptions
    #   data as a hash:
    #
    #       {
    #         enforce_https: false,
    #         tls_security_policy: "Policy-Min-TLS-1-0-2019-07", # accepts Policy-Min-TLS-1-0-2019-07, Policy-Min-TLS-1-2-2019-07
    #         custom_endpoint_enabled: false,
    #         custom_endpoint: "DomainNameFqdn",
    #         custom_endpoint_certificate_arn: "ARN",
    #       }
    #
    # @!attribute [rw] enforce_https
    #   True to require that all traffic to the domain arrive over HTTPS.
    #   @return [Boolean]
    #
    # @!attribute [rw] tls_security_policy
    #   Specify the TLS security policy to apply to the HTTPS endpoint of
    #   the domain.
    #
    #   Can be one of the following values:
    #
    #   * **Policy-Min-TLS-1-0-2019-07:** TLS security policy which supports
    #     TLS version 1.0 and higher.
    #
    #   * **Policy-Min-TLS-1-2-2019-07:** TLS security policy which supports
    #     only TLS version 1.2
    #   @return [String]
    #
    # @!attribute [rw] custom_endpoint_enabled
    #   Whether to enable a custom endpoint for the domain.
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_endpoint
    #   The fully qualified URL for the custom endpoint.
    #   @return [String]
    #
    # @!attribute [rw] custom_endpoint_certificate_arn
    #   The ARN for your security certificate, managed in Amazon Web
    #   Services Certificate Manager (ACM).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DomainEndpointOptions AWS API Documentation
    #
    class DomainEndpointOptions < Struct.new(
      :enforce_https,
      :tls_security_policy,
      :custom_endpoint_enabled,
      :custom_endpoint,
      :custom_endpoint_certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configured endpoint options for a domain and their current status.
    #
    # @!attribute [rw] options
    #   Options to configure the endpoint for a domain.
    #   @return [Types::DomainEndpointOptions]
    #
    # @!attribute [rw] status
    #   The status of the endpoint options for a domain.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DomainEndpointOptionsStatus AWS API Documentation
    #
    class DomainEndpointOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an OpenSearch Service domain.
    #
    # @!attribute [rw] domain_name
    #   Name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] engine_type
    #   The type of search engine that the domain is running.`OpenSearch`
    #   for an OpenSearch engine, or `Elasticsearch` for a legacy
    #   Elasticsearch OSS engine.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DomainInfo AWS API Documentation
    #
    class DomainInfo < Struct.new(
      :domain_name,
      :engine_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for information about an OpenSearch Service domain.
    #
    # @note When making an API call, you may pass DomainInformationContainer
    #   data as a hash:
    #
    #       {
    #         aws_domain_information: {
    #           owner_id: "OwnerId",
    #           domain_name: "DomainName", # required
    #           region: "Region",
    #         },
    #       }
    #
    # @!attribute [rw] aws_domain_information
    #   Information about an Amazon OpenSearch Service domain.
    #   @return [Types::AWSDomainInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DomainInformationContainer AWS API Documentation
    #
    class DomainInformationContainer < Struct.new(
      :aws_domain_information)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a package that is associated with a domain. For more
    # information, see [Custom packages for Amazon OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html
    #
    # @!attribute [rw] package_id
    #   Internal ID of the package.
    #   @return [String]
    #
    # @!attribute [rw] package_name
    #   User-specified name of the package.
    #   @return [String]
    #
    # @!attribute [rw] package_type
    #   The type of package.
    #   @return [String]
    #
    # @!attribute [rw] last_updated
    #   Timestamp of the most recent update to the package association
    #   status.
    #   @return [Time]
    #
    # @!attribute [rw] domain_name
    #   Name of the domain that the package is associated with.
    #   @return [String]
    #
    # @!attribute [rw] domain_package_status
    #   State of the association.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   The current version of the package.
    #   @return [String]
    #
    # @!attribute [rw] reference_path
    #   Denotes the location of the package on the OpenSearch Service
    #   cluster nodes. It's the same as `synonym_path` for dictionary
    #   files.
    #   @return [String]
    #
    # @!attribute [rw] error_details
    #   Additional information if the package is in an error state. Null
    #   otherwise.
    #   @return [Types::ErrorDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DomainPackageDetails AWS API Documentation
    #
    class DomainPackageDetails < Struct.new(
      :package_id,
      :package_name,
      :package_type,
      :last_updated,
      :domain_name,
      :domain_package_status,
      :package_version,
      :reference_path,
      :error_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The current status of an OpenSearch Service domain.
    #
    # @!attribute [rw] domain_id
    #   Unique identifier for the domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   Name of the domain. Domain names are unique across all domains owned
    #   by the same account within an Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the domain. For more information,
    #   see [IAM identifiers ][1] in the *AWS Identity and Access Management
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] created
    #   Creation status of an OpenSearch Service domain. True if domain
    #   creation is complete. False if domain creation is still in progress.
    #   @return [Boolean]
    #
    # @!attribute [rw] deleted
    #   Deletion status of an OpenSearch Service domain. True if domain
    #   deletion is complete. False if domain deletion is still in progress.
    #   Once deletion is complete, the status of the domain is no longer
    #   returned.
    #   @return [Boolean]
    #
    # @!attribute [rw] endpoint
    #   Domain-specific endpoint used to submit index, search, and data
    #   upload requests to the domain.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   The key-value pair that exists if the OpenSearch Service domain uses
    #   VPC endpoints.. Example `key, value`\:
    #   `'vpc','vpc-endpoint-h2dsd34efgyghrtguk5gt6j2foh4.us-east-1.es.amazonaws.com'`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] processing
    #   The status of the domain configuration. True if OpenSearch Service
    #   is processing configuration changes. False if the configuration is
    #   active.
    #   @return [Boolean]
    #
    # @!attribute [rw] upgrade_processing
    #   The status of a domain version upgrade to a new version of
    #   OpenSearch or Elasticsearch. True if OpenSearch Service is in the
    #   process of a version upgrade. False if the configuration is active.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   Version of OpenSearch or Elasticsearch that the domain is running,
    #   in the format `Elasticsearch_X.Y` or `OpenSearch_X.Y`.
    #   @return [String]
    #
    # @!attribute [rw] cluster_config
    #   Container for the cluster configuration of the domain.
    #   @return [Types::ClusterConfig]
    #
    # @!attribute [rw] ebs_options
    #   Container for EBS-based storage settings for the domain.
    #   @return [Types::EBSOptions]
    #
    # @!attribute [rw] access_policies
    #   Identity and Access Management (IAM) policy document specifying the
    #   access policies for the domain.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_options
    #   DEPRECATED. Container for parameters required to configure automated
    #   snapshots of domain indexes.
    #   @return [Types::SnapshotOptions]
    #
    # @!attribute [rw] vpc_options
    #   The VPC configuration for the domain.
    #   @return [Types::VPCDerivedInfo]
    #
    # @!attribute [rw] cognito_options
    #   Key-value pairs to configure Amazon Cognito authentication for
    #   OpenSearch Dashboards.
    #   @return [Types::CognitoOptions]
    #
    # @!attribute [rw] encryption_at_rest_options
    #   Encryption at rest settings for the domain.
    #   @return [Types::EncryptionAtRestOptions]
    #
    # @!attribute [rw] node_to_node_encryption_options
    #   Whether node-to-node encryption is enabled or disabled.
    #   @return [Types::NodeToNodeEncryptionOptions]
    #
    # @!attribute [rw] advanced_options
    #   Key-value pairs that specify advanced configuration options.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] log_publishing_options
    #   Log publishing options for the domain.
    #   @return [Hash<String,Types::LogPublishingOption>]
    #
    # @!attribute [rw] service_software_options
    #   The current status of the domain's service software.
    #   @return [Types::ServiceSoftwareOptions]
    #
    # @!attribute [rw] domain_endpoint_options
    #   Additional options for the domain endpoint, such as whether to
    #   require HTTPS for all traffic.
    #   @return [Types::DomainEndpointOptions]
    #
    # @!attribute [rw] advanced_security_options
    #   Settings for fine-grained access control.
    #   @return [Types::AdvancedSecurityOptions]
    #
    # @!attribute [rw] auto_tune_options
    #   Auto-Tune settings for the domain.
    #   @return [Types::AutoTuneOptionsOutput]
    #
    # @!attribute [rw] change_progress_details
    #   Information about a configuration change happening on the domain.
    #   @return [Types::ChangeProgressDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DomainStatus AWS API Documentation
    #
    class DomainStatus < Struct.new(
      :domain_id,
      :domain_name,
      :arn,
      :created,
      :deleted,
      :endpoint,
      :endpoints,
      :processing,
      :upgrade_processing,
      :engine_version,
      :cluster_config,
      :ebs_options,
      :access_policies,
      :snapshot_options,
      :vpc_options,
      :cognito_options,
      :encryption_at_rest_options,
      :node_to_node_encryption_options,
      :advanced_options,
      :log_publishing_options,
      :service_software_options,
      :domain_endpoint_options,
      :advanced_security_options,
      :auto_tune_options,
      :change_progress_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Results of a dry run performed in an update domain request.
    #
    # @!attribute [rw] deployment_type
    #   Specifies the way in which OpenSearch Service will apply an update.
    #   Possible values are:
    #
    #   * **Blue/Green** - The update requires a blue/green deployment.
    #
    #   * **DynamicUpdate** - No blue/green deployment required
    #
    #   * **Undetermined** - The domain is in the middle of an update and
    #     can't predict the deployment type. Try again after the update is
    #     complete.
    #
    #   * **None** - The request doesn't include any configuration changes.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message corresponding to the deployment type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/DryRunResults AWS API Documentation
    #
    class DryRunResults < Struct.new(
      :deployment_type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The duration of a maintenance schedule. For more information, see
    # [Auto-Tune for Amazon OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html
    #
    # @note When making an API call, you may pass Duration
    #   data as a hash:
    #
    #       {
    #         value: 1,
    #         unit: "HOURS", # accepts HOURS
    #       }
    #
    # @!attribute [rw] value
    #   Integer to specify the value of a maintenance schedule duration.
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   The unit of measurement for the duration of a maintenance schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/Duration AWS API Documentation
    #
    class Duration < Struct.new(
      :value,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters required to enable EBS-based storage for
    # an OpenSearch Service domain.
    #
    # @note When making an API call, you may pass EBSOptions
    #   data as a hash:
    #
    #       {
    #         ebs_enabled: false,
    #         volume_type: "standard", # accepts standard, gp2, io1, gp3
    #         volume_size: 1,
    #         iops: 1,
    #         throughput: 1,
    #       }
    #
    # @!attribute [rw] ebs_enabled
    #   Indicates whether EBS volumes are attached to data nodes in an
    #   OpenSearch Service domain.
    #   @return [Boolean]
    #
    # @!attribute [rw] volume_type
    #   Specifies the type of EBS volumes attached to data nodes.
    #   @return [String]
    #
    # @!attribute [rw] volume_size
    #   Specifies the size (in GiB) of EBS volumes attached to data nodes.
    #   @return [Integer]
    #
    # @!attribute [rw] iops
    #   Specifies the baseline input/output (I/O) performance of EBS volumes
    #   attached to data nodes. Applicable only for the `gp3` and
    #   provisioned IOPS EBS volume types.
    #   @return [Integer]
    #
    # @!attribute [rw] throughput
    #   Specifies the throughput (in MiB/s) of the EBS volumes attached to
    #   data nodes. Applicable only for the `gp3` volume type.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/EBSOptions AWS API Documentation
    #
    class EBSOptions < Struct.new(
      :ebs_enabled,
      :volume_type,
      :volume_size,
      :iops,
      :throughput)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the EBS options for the specified OpenSearch Service
    # domain.
    #
    # @!attribute [rw] options
    #   The configured EBS options for the specified domain.
    #   @return [Types::EBSOptions]
    #
    # @!attribute [rw] status
    #   The status of the EBS options for the specified domain.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/EBSOptionsStatus AWS API Documentation
    #
    class EBSOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies whether the domain should encrypt data at rest, and if so,
    # the Key Management Service (KMS) key to use. Can be used only to
    # create a new domain, not update an existing one.
    #
    # @note When making an API call, you may pass EncryptionAtRestOptions
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         kms_key_id: "KmsKeyId",
    #       }
    #
    # @!attribute [rw] enabled
    #   True to enable encryption at rest.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key ID. Takes the form
    #   `1a2a3a4-1a2a-3a4a-5a6a-1a2a3a4a5a6a`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/EncryptionAtRestOptions AWS API Documentation
    #
    class EncryptionAtRestOptions < Struct.new(
      :enabled,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status of the encryption at rest options for the specified OpenSearch
    # Service domain.
    #
    # @!attribute [rw] options
    #   Encryption at rest options for the specified domain.
    #   @return [Types::EncryptionAtRestOptions]
    #
    # @!attribute [rw] status
    #   The status of the encryption at rest options for the specified
    #   domain.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/EncryptionAtRestOptionsStatus AWS API Documentation
    #
    class EncryptionAtRestOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional information if the package is in an error state. Null
    # otherwise.
    #
    # @!attribute [rw] error_type
    #   The type of error that occurred.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message describing the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ErrorDetails AWS API Documentation
    #
    class ErrorDetails < Struct.new(
      :error_type,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter used to limit results when describing inbound or outbound
    # cross-cluster connections. You can specify multiple values per filter.
    # A cross-cluster connection must match at least one of the specified
    # values for it to be returned from an operation.
    #
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString",
    #         values: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   One or more values for the filter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to `GetCompatibleVersions`
    # operation.
    #
    # @note When making an API call, you may pass GetCompatibleVersionsRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName",
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of an existing domain. Provide this parameter to limit the
    #   results to a single domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetCompatibleVersionsRequest AWS API Documentation
    #
    class GetCompatibleVersionsRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the response returned by the `GetCompatibleVersions`
    # operation.
    #
    # @!attribute [rw] compatible_versions
    #   A map of OpenSearch or Elasticsearch versions and the versions you
    #   can upgrade them to.
    #   @return [Array<Types::CompatibleVersionsMap>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetCompatibleVersionsResponse AWS API Documentation
    #
    class GetCompatibleVersionsResponse < Struct.new(
      :compatible_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to the `GetPackageVersionHistory`
    # operation.
    #
    # @note When making an API call, you may pass GetPackageVersionHistoryRequest
    #   data as a hash:
    #
    #       {
    #         package_id: "PackageID", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] package_id
    #   The unique identifier of the package.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to get the next page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial `GetPackageVersionHistory` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `GetPackageVersionHistory` operations, which returns results in the
    #   next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetPackageVersionHistoryRequest AWS API Documentation
    #
    class GetPackageVersionHistoryRequest < Struct.new(
      :package_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for response returned by `GetPackageVersionHistory`
    # operation.
    #
    # @!attribute [rw] package_id
    #   The unique identifier of the package.
    #   @return [String]
    #
    # @!attribute [rw] package_version_history_list
    #   A list of package versions, along with their creation time and
    #   commit message.
    #   @return [Array<Types::PackageVersionHistory>]
    #
    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetPackageVersionHistoryResponse AWS API Documentation
    #
    class GetPackageVersionHistoryResponse < Struct.new(
      :package_id,
      :package_version_history_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to the `GetUpgradeHistory`
    # operation.
    #
    # @note When making an API call, you may pass GetUpgradeHistoryRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of an existing domain.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to get the next page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial `GetUpgradeHistory` operation returns a `nextToken`,
    #   you can include the returned `nextToken` in subsequent
    #   `GetUpgradeHistory` operations, which returns results in the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetUpgradeHistoryRequest AWS API Documentation
    #
    class GetUpgradeHistoryRequest < Struct.new(
      :domain_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the response returned by the `GetUpgradeHistory`
    # operation.
    #
    # @!attribute [rw] upgrade_histories
    #   A list of objects corresponding to each upgrade or upgrade
    #   eligibility check performed on a domain.
    #   @return [Array<Types::UpgradeHistory>]
    #
    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetUpgradeHistoryResponse AWS API Documentation
    #
    class GetUpgradeHistoryResponse < Struct.new(
      :upgrade_histories,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to the `GetUpgradeStatus`
    # operation.
    #
    # @note When making an API call, you may pass GetUpgradeStatusRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The domain of the domain to get upgrade status information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetUpgradeStatusRequest AWS API Documentation
    #
    class GetUpgradeStatusRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the response returned by the `GetUpgradeStatus`
    # operation.
    #
    # @!attribute [rw] upgrade_step
    #   One of three steps that an upgrade or upgrade eligibility check goes
    #   through.
    #   @return [String]
    #
    # @!attribute [rw] step_status
    #   The status of the current step that an upgrade is on.
    #   @return [String]
    #
    # @!attribute [rw] upgrade_name
    #   A string that describes the update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/GetUpgradeStatusResponse AWS API Documentation
    #
    class GetUpgradeStatusResponse < Struct.new(
      :upgrade_step,
      :step_status,
      :upgrade_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an inbound cross-cluster connection for Amazon OpenSearch
    # Service. For more information, see [Cross-cluster search for Amazon
    # OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html
    #
    # @!attribute [rw] local_domain_info
    #   Information about the source (local) domain.
    #   @return [Types::DomainInformationContainer]
    #
    # @!attribute [rw] remote_domain_info
    #   Information about the destination (remote) domain.
    #   @return [Types::DomainInformationContainer]
    #
    # @!attribute [rw] connection_id
    #   The unique identifier of the connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_status
    #   The current status of the connection.
    #   @return [Types::InboundConnectionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/InboundConnection AWS API Documentation
    #
    class InboundConnection < Struct.new(
      :local_domain_info,
      :remote_domain_info,
      :connection_id,
      :connection_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of an inbound cross-cluster connection for OpenSearch
    # Service.
    #
    # @!attribute [rw] status_code
    #   The status code for the connection. Can be one of the following:
    #
    #   * **PENDING\_ACCEPTANCE** - Inbound connection is not yet accepted
    #     by the remote domain owner.
    #
    #   * **APPROVED**\: Inbound connection is pending acceptance by the
    #     remote domain owner.
    #
    #   * **PROVISIONING**\: Inbound connection is being provisioned.
    #
    #   * **ACTIVE**\: Inbound connection is active and ready to use.
    #
    #   * **REJECTING**\: Inbound connection rejection is in process.
    #
    #   * **REJECTED**\: Inbound connection is rejected.
    #
    #   * **DELETING**\: Inbound connection deletion is in progress.
    #
    #   * **DELETED**\: Inbound connection is deleted and can no longer be
    #     used.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Information about the connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/InboundConnectionStatus AWS API Documentation
    #
    class InboundConnectionStatus < Struct.new(
      :status_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Limits on the number of instances that can be created in OpenSearch
    # Service for a given instance type.
    #
    # @!attribute [rw] minimum_instance_count
    #   The maximum allowed number of instances.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_instance_count
    #   The minimum allowed number of instances.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/InstanceCountLimits AWS API Documentation
    #
    class InstanceCountLimits < Struct.new(
      :minimum_instance_count,
      :maximum_instance_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Instance-related attributes that are available for a given instance
    # type.
    #
    # @!attribute [rw] instance_count_limits
    #   Limits on the number of instances that can be created for a given
    #   instance type.
    #   @return [Types::InstanceCountLimits]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/InstanceLimits AWS API Documentation
    #
    class InstanceLimits < Struct.new(
      :instance_count_limits)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lists all instance types and available features for a given OpenSearch
    # or Elasticsearch version.
    #
    # @!attribute [rw] instance_type
    #   The instance type.
    #   @return [String]
    #
    # @!attribute [rw] encryption_enabled
    #   Whether encryption at rest and node-to-node encryption are supported
    #   for the instance type.
    #   @return [Boolean]
    #
    # @!attribute [rw] cognito_enabled
    #   Whether Amazon Cognito access is supported for the instance type.
    #   @return [Boolean]
    #
    # @!attribute [rw] app_logs_enabled
    #   Whether logging is supported for the instance type.
    #   @return [Boolean]
    #
    # @!attribute [rw] advanced_security_enabled
    #   Whether fine-grained access control is supported for the instance
    #   type.
    #   @return [Boolean]
    #
    # @!attribute [rw] warm_enabled
    #   Whether UltraWarm is supported for the instance type.
    #   @return [Boolean]
    #
    # @!attribute [rw] instance_role
    #   Whether the instance acts as a data node, a dedicated master node,
    #   or an UltraWarm node.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/InstanceTypeDetails AWS API Documentation
    #
    class InstanceTypeDetails < Struct.new(
      :instance_type,
      :encryption_enabled,
      :cognito_enabled,
      :app_logs_enabled,
      :advanced_security_enabled,
      :warm_enabled,
      :instance_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception or failure (the failure is internal to the service) . Gives
    # http status code of 500.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/InternalException AWS API Documentation
    #
    class InternalException < Aws::EmptyStructure; end

    # The request processing has failed because of invalid pagination token
    # provided by customer. Returns an HTTP status code of 400.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/InvalidPaginationTokenException AWS API Documentation
    #
    class InvalidPaginationTokenException < Aws::EmptyStructure; end

    # An exception for trying to create or access sub-resource that is
    # either invalid or not supported. Gives http status code of 409.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/InvalidTypeException AWS API Documentation
    #
    class InvalidTypeException < Aws::EmptyStructure; end

    # An exception for trying to create more than allowed resources or
    # sub-resources. Gives http status code of 409.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Aws::EmptyStructure; end

    # Limits for a given instance type and for each of its roles.
    #
    # @!attribute [rw] storage_types
    #   Storage-related attributes that are available for a given instance
    #   type.
    #   @return [Array<Types::StorageType>]
    #
    # @!attribute [rw] instance_limits
    #   The limits for a given instance type.
    #   @return [Types::InstanceLimits]
    #
    # @!attribute [rw] additional_limits
    #   List of additional limits that are specific to a given instance type
    #   for each of its instance roles.
    #   @return [Array<Types::AdditionalLimit>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/Limits AWS API Documentation
    #
    class Limits < Struct.new(
      :storage_types,
      :instance_limits,
      :additional_limits)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `ListDomainNames` operation.
    #
    # @note When making an API call, you may pass ListDomainNamesRequest
    #   data as a hash:
    #
    #       {
    #         engine_type: "OpenSearch", # accepts OpenSearch, Elasticsearch
    #       }
    #
    # @!attribute [rw] engine_type
    #   Filters the output by domain engine type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListDomainNamesRequest AWS API Documentation
    #
    class ListDomainNamesRequest < Struct.new(
      :engine_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The results of a `ListDomainNames` operation. Contains the names of
    # all domains owned by this account and their respective engine types.
    #
    # @!attribute [rw] domain_names
    #   The names of all OpenSearch Service domains owned by the current
    #   user and their respective engine types.
    #   @return [Array<Types::DomainInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListDomainNamesResponse AWS API Documentation
    #
    class ListDomainNamesResponse < Struct.new(
      :domain_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to the `ListDomainsForPackage`
    # operation.
    #
    # @note When making an API call, you may pass ListDomainsForPackageRequest
    #   data as a hash:
    #
    #       {
    #         package_id: "PackageID", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] package_id
    #   The unique identifier of the package for which to list associated
    #   domains.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to get the next page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial `ListDomainsForPackage` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `ListDomainsForPackage` operations, which returns results in the
    #   next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListDomainsForPackageRequest AWS API Documentation
    #
    class ListDomainsForPackageRequest < Struct.new(
      :package_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the response parameters to the `ListDomainsForPackage`
    # operation.
    #
    # @!attribute [rw] domain_package_details_list
    #   Information about all domains associated with a package.
    #   @return [Array<Types::DomainPackageDetails>]
    #
    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListDomainsForPackageResponse AWS API Documentation
    #
    class ListDomainsForPackageResponse < Struct.new(
      :domain_package_details_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInstanceTypeDetailsRequest
    #   data as a hash:
    #
    #       {
    #         engine_version: "VersionString", # required
    #         domain_name: "DomainName",
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] engine_version
    #   Version of OpenSearch or Elasticsearch, in the format
    #   Elasticsearch\_X.Y or OpenSearch\_X.Y. Defaults to the latest
    #   version of OpenSearch.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   Name of the domain to list instance type details for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to get the next page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial `ListInstanceTypeDetails` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `ListInstanceTypeDetails` operations, which returns results in the
    #   next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListInstanceTypeDetailsRequest AWS API Documentation
    #
    class ListInstanceTypeDetailsRequest < Struct.new(
      :engine_version,
      :domain_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_type_details
    #   Lists all supported instance types and features for the given
    #   OpenSearch or Elasticsearch version.
    #   @return [Array<Types::InstanceTypeDetails>]
    #
    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListInstanceTypeDetailsResponse AWS API Documentation
    #
    class ListInstanceTypeDetailsResponse < Struct.new(
      :instance_type_details,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to the `ListPackagesForDomain`
    # operation.
    #
    # @note When making an API call, you may pass ListPackagesForDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain for which you want to list associated
    #   packages.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to get the next page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial `ListPackagesForDomain` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `ListPackagesForDomain` operations, which returns results in the
    #   next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListPackagesForDomainRequest AWS API Documentation
    #
    class ListPackagesForDomainRequest < Struct.new(
      :domain_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the response parameters to the `ListPackagesForDomain`
    # operation.
    #
    # @!attribute [rw] domain_package_details_list
    #   List of all packages associated with a domain.
    #   @return [Array<Types::DomainPackageDetails>]
    #
    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListPackagesForDomainResponse AWS API Documentation
    #
    class ListPackagesForDomainResponse < Struct.new(
      :domain_package_details_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters to the `ListTags` operation.
    #
    # @note When making an API call, you may pass ListTagsRequest
    #   data as a hash:
    #
    #       {
    #         arn: "ARN", # required
    #       }
    #
    # @!attribute [rw] arn
    #   Amazon Resource Name (ARN) for the domain to view tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListTagsRequest AWS API Documentation
    #
    class ListTagsRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The results of a `ListTags` operation.
    #
    # @!attribute [rw] tag_list
    #   List of resource tags associated with the specified domain.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListTagsResponse AWS API Documentation
    #
    class ListTagsResponse < Struct.new(
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to the `ListVersions` operation.
    #
    # @note When making an API call, you may pass ListVersionsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to get the next page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial `ListVersions` operation returns a `nextToken`, you
    #   can include the returned `nextToken` in subsequent `ListVersions`
    #   operations, which returns results in the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListVersionsRequest AWS API Documentation
    #
    class ListVersionsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the parameters for response received from the
    # `ListVersions` operation.
    #
    # @!attribute [rw] versions
    #   A list of all versions of OpenSearch and Elasticsearch that Amazon
    #   OpenSearch Service supports.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListVersionsResponse AWS API Documentation
    #
    class ListVersionsResponse < Struct.new(
      :versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListVpcEndpointAccessRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the OpenSearch Service domain to retrieve access
    #   information for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If your initial `ListVpcEndpointAccess` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `ListVpcEndpointAccess` operations, which returns results in the
    #   next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListVpcEndpointAccessRequest AWS API Documentation
    #
    class ListVpcEndpointAccessRequest < Struct.new(
      :domain_name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authorized_principal_list
    #   A list of [IAM principals][1] that can currently access the domain.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html
    #   @return [Array<Types::AuthorizedPrincipal>]
    #
    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListVpcEndpointAccessResponse AWS API Documentation
    #
    class ListVpcEndpointAccessResponse < Struct.new(
      :authorized_principal_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListVpcEndpointsForDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain to list associated VPC endpoints for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If your initial `ListEndpointsForDomain` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `ListEndpointsForDomain` operations, which returns results in the
    #   next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListVpcEndpointsForDomainRequest AWS API Documentation
    #
    class ListVpcEndpointsForDomainRequest < Struct.new(
      :domain_name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_endpoint_summary_list
    #   Information about each endpoint associated with the domain.
    #   @return [Array<Types::VpcEndpointSummary>]
    #
    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListVpcEndpointsForDomainResponse AWS API Documentation
    #
    class ListVpcEndpointsForDomainResponse < Struct.new(
      :vpc_endpoint_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListVpcEndpointsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] next_token
    #   If your initial `ListVpcEndpoints` operation returns a `nextToken`,
    #   you can include the returned `nextToken` in subsequent
    #   `ListVpcEndpoints` operations, which returns results in the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListVpcEndpointsRequest AWS API Documentation
    #
    class ListVpcEndpointsRequest < Struct.new(
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_endpoint_summary_list
    #   Information about each endpoint.
    #   @return [Array<Types::VpcEndpointSummary>]
    #
    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ListVpcEndpointsResponse AWS API Documentation
    #
    class ListVpcEndpointsResponse < Struct.new(
      :vpc_endpoint_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies whether the Amazon OpenSearch Service domain publishes the
    # OpenSearch application and slow logs to Amazon CloudWatch. For more
    # information, see [Monitoring OpenSearch logs with Amazon CloudWatch
    # Logs][1].
    #
    # <note markdown="1"> After you enable log publishing, you still have to enable the
    # collection of slow logs using the OpenSearch REST API.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createdomain-configure-slow-logs.html
    #
    # @note When making an API call, you may pass LogPublishingOption
    #   data as a hash:
    #
    #       {
    #         cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn",
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] cloud_watch_logs_log_group_arn
    #   The Amazon Resource Name (ARN) of the CloudWatch Logs group to
    #   publish logs to.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Whether the log should be published.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/LogPublishingOption AWS API Documentation
    #
    class LogPublishingOption < Struct.new(
      :cloud_watch_logs_log_group_arn,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configured log publishing options for the domain and their current
    # status.
    #
    # @!attribute [rw] options
    #   The log publishing options configured for the domain.
    #   @return [Hash<String,Types::LogPublishingOption>]
    #
    # @!attribute [rw] status
    #   The status of the log publishing options for the domain.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/LogPublishingOptionsStatus AWS API Documentation
    #
    class LogPublishingOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Credentials for the master user for a domain.
    #
    # @note When making an API call, you may pass MasterUserOptions
    #   data as a hash:
    #
    #       {
    #         master_user_arn: "ARN",
    #         master_user_name: "Username",
    #         master_user_password: "Password",
    #       }
    #
    # @!attribute [rw] master_user_arn
    #   Amazon Resource Name (ARN) for the master user. Only specify if
    #   `InternalUserDatabaseEnabled` is `false`.
    #   @return [String]
    #
    # @!attribute [rw] master_user_name
    #   User name for the master user. Only specify if
    #   `InternalUserDatabaseEnabled` is `true`.
    #   @return [String]
    #
    # @!attribute [rw] master_user_password
    #   Password for the master user. Only specify if
    #   `InternalUserDatabaseEnabled` is `true`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/MasterUserOptions AWS API Documentation
    #
    class MasterUserOptions < Struct.new(
      :master_user_arn,
      :master_user_name,
      :master_user_password)
      SENSITIVE = [:master_user_name, :master_user_password]
      include Aws::Structure
    end

    # Enables or disables node-to-node encryption. For more information, see
    # [Node-to-node encryption for Amazon OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ntn.html
    #
    # @note When making an API call, you may pass NodeToNodeEncryptionOptions
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] enabled
    #   True to enable node-to-node encryption.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/NodeToNodeEncryptionOptions AWS API Documentation
    #
    class NodeToNodeEncryptionOptions < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status of the node-to-node encryption options for the specified
    # domain.
    #
    # @!attribute [rw] options
    #   The node-to-node encryption options for the specified domain.
    #   @return [Types::NodeToNodeEncryptionOptions]
    #
    # @!attribute [rw] status
    #   The status of the node-to-node encryption options for the specified
    #   domain.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/NodeToNodeEncryptionOptionsStatus AWS API Documentation
    #
    class NodeToNodeEncryptionOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the current status of an entity.
    #
    # @!attribute [rw] creation_date
    #   The timestamp when the entity was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_date
    #   The timestamp of the last time the entity was updated.
    #   @return [Time]
    #
    # @!attribute [rw] update_version
    #   The latest version of the entity.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The state of the entity.
    #   @return [String]
    #
    # @!attribute [rw] pending_deletion
    #   Indicates whether the entity is being deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/OptionStatus AWS API Documentation
    #
    class OptionStatus < Struct.new(
      :creation_date,
      :update_date,
      :update_version,
      :state,
      :pending_deletion)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies details about an outbound cross-cluster connection.
    #
    # @!attribute [rw] local_domain_info
    #   Information about the source (local) domain.
    #   @return [Types::DomainInformationContainer]
    #
    # @!attribute [rw] remote_domain_info
    #   Information about the destination (remote) domain.
    #   @return [Types::DomainInformationContainer]
    #
    # @!attribute [rw] connection_id
    #   Unique identifier of the connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_alias
    #   Name of the connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_status
    #   Status of the connection.
    #   @return [Types::OutboundConnectionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/OutboundConnection AWS API Documentation
    #
    class OutboundConnection < Struct.new(
      :local_domain_info,
      :remote_domain_info,
      :connection_id,
      :connection_alias,
      :connection_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of an outbound cross-cluster connection.
    #
    # @!attribute [rw] status_code
    #   The status code for the outbound connection. Can be one of the
    #   following:
    #
    #   * **VALIDATING** - The outbound connection request is being
    #     validated.
    #
    #   * **VALIDATION\_FAILED** - Validation failed for the connection
    #     request.
    #
    #   * **PENDING\_ACCEPTANCE**\: Outbound connection request is validated
    #     and is not yet accepted by the remote domain owner.
    #
    #   * **APPROVED** - Outbound connection has been approved by the remote
    #     domain owner for getting provisioned.
    #
    #   * **PROVISIONING** - Outbound connection request is in process.
    #
    #   * **ACTIVE** - Outbound connection is active and ready to use.
    #
    #   * **REJECTING** - Outbound connection rejection by remote domain
    #     owner is in progress.
    #
    #   * **REJECTED** - Outbound connection request is rejected by remote
    #     domain owner.
    #
    #   * **DELETING** - Outbound connection deletion is in progress.
    #
    #   * **DELETED** - Outbound connection is deleted and can no longer be
    #     used.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Verbose information for the outbound connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/OutboundConnectionStatus AWS API Documentation
    #
    class OutboundConnectionStatus < Struct.new(
      :status_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Basic information about a package.
    #
    # @!attribute [rw] package_id
    #   The unique identifier of the package.
    #   @return [String]
    #
    # @!attribute [rw] package_name
    #   User-specified name of the package.
    #   @return [String]
    #
    # @!attribute [rw] package_type
    #   The type of package.
    #   @return [String]
    #
    # @!attribute [rw] package_description
    #   User-specified description of the package.
    #   @return [String]
    #
    # @!attribute [rw] package_status
    #   Current status of the package.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the package was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   Date and time when the package was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] available_package_version
    #   The package version.
    #   @return [String]
    #
    # @!attribute [rw] error_details
    #   Additional information if the package is in an error state. Null
    #   otherwise.
    #   @return [Types::ErrorDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/PackageDetails AWS API Documentation
    #
    class PackageDetails < Struct.new(
      :package_id,
      :package_name,
      :package_type,
      :package_description,
      :package_status,
      :created_at,
      :last_updated_at,
      :available_package_version,
      :error_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 location to import the package from.
    #
    # @note When making an API call, you may pass PackageSource
    #   data as a hash:
    #
    #       {
    #         s3_bucket_name: "S3BucketName",
    #         s3_key: "S3Key",
    #       }
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the Amazon S3 bucket containing the package.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   Key (file name) of the package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/PackageSource AWS API Documentation
    #
    class PackageSource < Struct.new(
      :s3_bucket_name,
      :s3_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a package version.
    #
    # @!attribute [rw] package_version
    #   The package version.
    #   @return [String]
    #
    # @!attribute [rw] commit_message
    #   A message associated with the package version when it was uploaded.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the package was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/PackageVersionHistory AWS API Documentation
    #
    class PackageVersionHistory < Struct.new(
      :package_version,
      :commit_message,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for request parameters to the
    # `PurchaseReservedInstanceOffering` operation.
    #
    # @note When making an API call, you may pass PurchaseReservedInstanceOfferingRequest
    #   data as a hash:
    #
    #       {
    #         reserved_instance_offering_id: "GUID", # required
    #         reservation_name: "ReservationToken", # required
    #         instance_count: 1,
    #       }
    #
    # @!attribute [rw] reserved_instance_offering_id
    #   The ID of the Reserved Instance offering to purchase.
    #   @return [String]
    #
    # @!attribute [rw] reservation_name
    #   A customer-specified identifier to track this reservation.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of OpenSearch instances to reserve.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/PurchaseReservedInstanceOfferingRequest AWS API Documentation
    #
    class PurchaseReservedInstanceOfferingRequest < Struct.new(
      :reserved_instance_offering_id,
      :reservation_name,
      :instance_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `PurchaseReservedInstanceOffering`
    # operation.
    #
    # @!attribute [rw] reserved_instance_id
    #   The ID of the Reserved Instance offering that was purchased.
    #   @return [String]
    #
    # @!attribute [rw] reservation_name
    #   The customer-specified identifier used to track this reservation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/PurchaseReservedInstanceOfferingResponse AWS API Documentation
    #
    class PurchaseReservedInstanceOfferingResponse < Struct.new(
      :reserved_instance_id,
      :reservation_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the specific price and frequency of a recurring charges for
    # an OpenSearch Reserved Instance, or for a Reserved Instance offering.
    #
    # @!attribute [rw] recurring_charge_amount
    #   The monetary amount of the recurring charge.
    #   @return [Float]
    #
    # @!attribute [rw] recurring_charge_frequency
    #   The frequency of the recurring charge.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/RecurringCharge AWS API Documentation
    #
    class RecurringCharge < Struct.new(
      :recurring_charge_amount,
      :recurring_charge_frequency)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to the `RejectInboundConnection`
    # operation.
    #
    # @note When making an API call, you may pass RejectInboundConnectionRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "ConnectionId", # required
    #       }
    #
    # @!attribute [rw] connection_id
    #   The unique identifier of the inbound connection to reject.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/RejectInboundConnectionRequest AWS API Documentation
    #
    class RejectInboundConnectionRequest < Struct.new(
      :connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `RejectInboundConnection` operation.
    #
    # @!attribute [rw] connection
    #   Contains details about the rejected inbound connection.
    #   @return [Types::InboundConnection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/RejectInboundConnectionResponse AWS API Documentation
    #
    class RejectInboundConnectionResponse < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to the `RemoveTags` operation.
    #
    # @note When making an API call, you may pass RemoveTagsRequest
    #   data as a hash:
    #
    #       {
    #         arn: "ARN", # required
    #         tag_keys: ["String"], # required
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the domain from which you want to
    #   delete the specified tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the domain.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/RemoveTagsRequest AWS API Documentation
    #
    class RemoveTagsRequest < Struct.new(
      :arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of an OpenSearch Reserved Instance.
    #
    # @!attribute [rw] reservation_name
    #   The customer-specified identifier to track this reservation.
    #   @return [String]
    #
    # @!attribute [rw] reserved_instance_id
    #   The unique identifier for the reservation.
    #   @return [String]
    #
    # @!attribute [rw] billing_subscription_id
    #   The unique identifier of the billing subscription.
    #   @return [Integer]
    #
    # @!attribute [rw] reserved_instance_offering_id
    #   The unique identifier of the Reserved Instance offering.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The OpenSearch instance type offered by theReserved Instance
    #   offering.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time when the reservation was purchased.
    #   @return [Time]
    #
    # @!attribute [rw] duration
    #   The duration, in seconds, for which the OpenSearch instance is
    #   reserved.
    #   @return [Integer]
    #
    # @!attribute [rw] fixed_price
    #   The upfront fixed charge you will paid to purchase the specific
    #   Reserved Instance offering.
    #   @return [Float]
    #
    # @!attribute [rw] usage_price
    #   The hourly rate at which you're charged for the domain using this
    #   Reserved Instance.
    #   @return [Float]
    #
    # @!attribute [rw] currency_code
    #   The currency code for the offering.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of OpenSearch instances that have been reserved.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The state of the Reserved Instance.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   The payment option as defined in the Reserved Instance offering.
    #   @return [String]
    #
    # @!attribute [rw] recurring_charges
    #   The recurring charge to your account, regardless of whether you
    #   create any domains using the Reserved Instance offering.
    #   @return [Array<Types::RecurringCharge>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ReservedInstance AWS API Documentation
    #
    class ReservedInstance < Struct.new(
      :reservation_name,
      :reserved_instance_id,
      :billing_subscription_id,
      :reserved_instance_offering_id,
      :instance_type,
      :start_time,
      :duration,
      :fixed_price,
      :usage_price,
      :currency_code,
      :instance_count,
      :state,
      :payment_option,
      :recurring_charges)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of an OpenSearch Reserved Instance offering.
    #
    # @!attribute [rw] reserved_instance_offering_id
    #   The unique identifier of the Reserved Instance offering.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The OpenSearch instance type offered by the Reserved Instance
    #   offering.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration, in seconds, for which the offering will reserve the
    #   OpenSearch instance.
    #   @return [Integer]
    #
    # @!attribute [rw] fixed_price
    #   The upfront fixed charge you will pay to purchase the specific
    #   Reserved Instance offering.
    #   @return [Float]
    #
    # @!attribute [rw] usage_price
    #   The hourly rate at which you're charged for the domain using this
    #   Reserved Instance.
    #   @return [Float]
    #
    # @!attribute [rw] currency_code
    #   The currency code for the Reserved Instance offering.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   Payment option for the Reserved Instance offering
    #   @return [String]
    #
    # @!attribute [rw] recurring_charges
    #   The recurring charge to your account, regardless of whether you
    #   creates any domains using the offering.
    #   @return [Array<Types::RecurringCharge>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ReservedInstanceOffering AWS API Documentation
    #
    class ReservedInstanceOffering < Struct.new(
      :reserved_instance_offering_id,
      :instance_type,
      :duration,
      :fixed_price,
      :usage_price,
      :currency_code,
      :payment_option,
      :recurring_charges)
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception for creating a resource that already exists. Gives http
    # status code of 400.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Aws::EmptyStructure; end

    # An exception for accessing or deleting a resource that does not exist.
    # Gives http status code of 400.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass RevokeVpcEndpointAccessRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         account: "AWSAccount", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the OpenSearch Service domain.
    #   @return [String]
    #
    # @!attribute [rw] account
    #   The account ID to revoke access from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/RevokeVpcEndpointAccessRequest AWS API Documentation
    #
    class RevokeVpcEndpointAccessRequest < Struct.new(
      :domain_name,
      :account)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/RevokeVpcEndpointAccessResponse AWS API Documentation
    #
    class RevokeVpcEndpointAccessResponse < Aws::EmptyStructure; end

    # The SAML identity povider information.
    #
    # @note When making an API call, you may pass SAMLIdp
    #   data as a hash:
    #
    #       {
    #         metadata_content: "SAMLMetadata", # required
    #         entity_id: "SAMLEntityId", # required
    #       }
    #
    # @!attribute [rw] metadata_content
    #   The metadata of the SAML application, in XML format.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The unique entity ID of the application in the SAML identity
    #   provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/SAMLIdp AWS API Documentation
    #
    class SAMLIdp < Struct.new(
      :metadata_content,
      :entity_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SAML authentication configuration for an Amazon OpenSearch Service
    # domain.
    #
    # @note When making an API call, you may pass SAMLOptionsInput
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         idp: {
    #           metadata_content: "SAMLMetadata", # required
    #           entity_id: "SAMLEntityId", # required
    #         },
    #         master_user_name: "Username",
    #         master_backend_role: "BackendRole",
    #         subject_key: "String",
    #         roles_key: "String",
    #         session_timeout_minutes: 1,
    #       }
    #
    # @!attribute [rw] enabled
    #   True to enable SAML authentication for a domain.
    #   @return [Boolean]
    #
    # @!attribute [rw] idp
    #   The SAML Identity Provider's information.
    #   @return [Types::SAMLIdp]
    #
    # @!attribute [rw] master_user_name
    #   The SAML master user name, which is stored in the domain's internal
    #   user database.
    #   @return [String]
    #
    # @!attribute [rw] master_backend_role
    #   The backend role that the SAML master user is mapped to.
    #   @return [String]
    #
    # @!attribute [rw] subject_key
    #   Element of the SAML assertion to use for the user name. Default is
    #   `NameID`.
    #   @return [String]
    #
    # @!attribute [rw] roles_key
    #   Element of the SAML assertion to use for backend roles. Default is
    #   `roles`.
    #   @return [String]
    #
    # @!attribute [rw] session_timeout_minutes
    #   The duration, in minutes, after which a user session becomes
    #   inactive. Acceptable values are between 1 and 1440, and the default
    #   value is 60.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/SAMLOptionsInput AWS API Documentation
    #
    class SAMLOptionsInput < Struct.new(
      :enabled,
      :idp,
      :master_user_name,
      :master_backend_role,
      :subject_key,
      :roles_key,
      :session_timeout_minutes)
      SENSITIVE = [:master_user_name]
      include Aws::Structure
    end

    # Describes the SAML application configured for the domain.
    #
    # @!attribute [rw] enabled
    #   True if SAML is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] idp
    #   Describes the SAML identity provider's information.
    #   @return [Types::SAMLIdp]
    #
    # @!attribute [rw] subject_key
    #   The key used for matching the SAML subject attribute.
    #   @return [String]
    #
    # @!attribute [rw] roles_key
    #   The key used for matching the SAML roles attribute.
    #   @return [String]
    #
    # @!attribute [rw] session_timeout_minutes
    #   The duration, in minutes, after which a user session becomes
    #   inactive.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/SAMLOptionsOutput AWS API Documentation
    #
    class SAMLOptionsOutput < Struct.new(
      :enabled,
      :idp,
      :subject_key,
      :roles_key,
      :session_timeout_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies details about a scheduled Auto-Tune action. For more
    # information, see [Auto-Tune for Amazon OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html
    #
    # @!attribute [rw] date
    #   The date and time when the Auto-Tune action is scheduled for the
    #   domain.
    #   @return [Time]
    #
    # @!attribute [rw] action_type
    #   The type of Auto-Tune action.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   A description of the Auto-Tune action.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity of the Auto-Tune action. Valid values are `LOW`,
    #   `MEDIUM`, and `HIGH`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ScheduledAutoTuneDetails AWS API Documentation
    #
    class ScheduledAutoTuneDetails < Struct.new(
      :date,
      :action_type,
      :action,
      :severity)
      SENSITIVE = []
      include Aws::Structure
    end

    # The current status of the service software for an Amazon OpenSearch
    # Service domain. For more information, see [Service software updates in
    # Amazon OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html
    #
    # @!attribute [rw] current_version
    #   The current service software version present on the domain.
    #   @return [String]
    #
    # @!attribute [rw] new_version
    #   The new service software version, if one is available.
    #   @return [String]
    #
    # @!attribute [rw] update_available
    #   True if you're able to update your service software version. False
    #   if you can't update your service software version.
    #   @return [Boolean]
    #
    # @!attribute [rw] cancellable
    #   True if you're able to cancel your service software version update.
    #   False if you can't cancel your service software update.
    #   @return [Boolean]
    #
    # @!attribute [rw] update_status
    #   The status of your service software update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the service software update status.
    #   @return [String]
    #
    # @!attribute [rw] automated_update_date
    #   The timestamp, in Epoch time, until which you can manually request a
    #   service software update. After this date, we automatically update
    #   your service software.
    #   @return [Time]
    #
    # @!attribute [rw] optional_deployment
    #   True if a service software is never automatically updated. False if
    #   a service software is automatically updated after the automated
    #   update date.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ServiceSoftwareOptions AWS API Documentation
    #
    class ServiceSoftwareOptions < Struct.new(
      :current_version,
      :new_version,
      :update_available,
      :cancellable,
      :update_status,
      :description,
      :automated_update_date,
      :optional_deployment)
      SENSITIVE = []
      include Aws::Structure
    end

    # The time, in UTC format, when OpenSearch Service takes a daily
    # automated snapshot of the specified domain. Default is `0` hours.
    #
    # @note When making an API call, you may pass SnapshotOptions
    #   data as a hash:
    #
    #       {
    #         automated_snapshot_start_hour: 1,
    #       }
    #
    # @!attribute [rw] automated_snapshot_start_hour
    #   The time, in UTC format, when OpenSearch Service takes a daily
    #   automated snapshot of the specified domain. Default is `0` hours.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/SnapshotOptions AWS API Documentation
    #
    class SnapshotOptions < Struct.new(
      :automated_snapshot_start_hour)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for information about a daily automated snapshot for an
    # OpenSearch Service domain.
    #
    # @!attribute [rw] options
    #   The daily snapshot options specified for the domain.
    #   @return [Types::SnapshotOptions]
    #
    # @!attribute [rw] status
    #   The status of a daily automated snapshot.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/SnapshotOptionsStatus AWS API Documentation
    #
    class SnapshotOptionsStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to the
    # `StartServiceSoftwareUpdate` operation.
    #
    # @note When making an API call, you may pass StartServiceSoftwareUpdateRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to update to the latest service
    #   software.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/StartServiceSoftwareUpdateRequest AWS API Documentation
    #
    class StartServiceSoftwareUpdateRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `StartServiceSoftwareUpdate` operation.
    # Contains the status of the update.
    #
    # @!attribute [rw] service_software_options
    #   The current status of the OpenSearch Service software update.
    #   @return [Types::ServiceSoftwareOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/StartServiceSoftwareUpdateResponse AWS API Documentation
    #
    class StartServiceSoftwareUpdateResponse < Struct.new(
      :service_software_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of storage types for an Amazon OpenSearch Service domain that
    # are available for a given intance type.
    #
    # @!attribute [rw] storage_type_name
    #   The name of the storage type.
    #   @return [String]
    #
    # @!attribute [rw] storage_sub_type_name
    #   The storage sub-type, such as `gp3` or `io1`.
    #   @return [String]
    #
    # @!attribute [rw] storage_type_limits
    #   Limits that are applicable for the given storage type.
    #   @return [Array<Types::StorageTypeLimit>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/StorageType AWS API Documentation
    #
    class StorageType < Struct.new(
      :storage_type_name,
      :storage_sub_type_name,
      :storage_type_limits)
      SENSITIVE = []
      include Aws::Structure
    end

    # Limits that are applicable for the given Amazon OpenSearch Service
    # storage type.
    #
    # @!attribute [rw] limit_name
    #   Name of storage limits that are applicable for the given storage
    #   type. If `StorageType` is `ebs`, the following options are
    #   available:
    #
    #   * **MinimumVolumeSize** - Minimum volume size that is available for
    #     the given storage type. Can be empty if not applicable.
    #
    #   * **MaximumVolumeSize** - Maximum volume size that is available for
    #     the given storage type. Can be empty if not applicable.
    #
    #   * **MaximumIops** - Maximum amount of IOPS that is available for the
    #     given the storage type. Can be empty if not applicable.
    #
    #   * **MinimumIops** - Minimum amount of IOPS that is available for the
    #     given the storage type. Can be empty if not applicable.
    #
    #   * **MaximumThroughput** - Maximum amount of throughput that is
    #     available for the given the storage type. Can be empty if not
    #     applicable.
    #
    #   * **MinimumThroughput** - Minimum amount of throughput that is
    #     available for the given the storage type. Can be empty if not
    #     applicable.
    #   @return [String]
    #
    # @!attribute [rw] limit_values
    #   The limit values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/StorageTypeLimit AWS API Documentation
    #
    class StorageTypeLimit < Struct.new(
      :limit_name,
      :limit_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag (key-value pair) for an Amazon OpenSearch Service resource.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The tag key. Tag keys must be unique for the domain to which they
    #   are attached.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value assigned to the corresponding tag key. Tag values can be
    #   null and don't have to be unique in a tag set. For example, you can
    #   have a key value pair in a tag set of `project : Trinity` and
    #   `cost-center : Trinity`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to the `UpdateDomain` operation.
    #
    # @note When making an API call, you may pass UpdateDomainConfigRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         cluster_config: {
    #           instance_type: "m3.medium.search", # accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #           instance_count: 1,
    #           dedicated_master_enabled: false,
    #           zone_awareness_enabled: false,
    #           zone_awareness_config: {
    #             availability_zone_count: 1,
    #           },
    #           dedicated_master_type: "m3.medium.search", # accepts m3.medium.search, m3.large.search, m3.xlarge.search, m3.2xlarge.search, m4.large.search, m4.xlarge.search, m4.2xlarge.search, m4.4xlarge.search, m4.10xlarge.search, m5.large.search, m5.xlarge.search, m5.2xlarge.search, m5.4xlarge.search, m5.12xlarge.search, m5.24xlarge.search, r5.large.search, r5.xlarge.search, r5.2xlarge.search, r5.4xlarge.search, r5.12xlarge.search, r5.24xlarge.search, c5.large.search, c5.xlarge.search, c5.2xlarge.search, c5.4xlarge.search, c5.9xlarge.search, c5.18xlarge.search, t3.nano.search, t3.micro.search, t3.small.search, t3.medium.search, t3.large.search, t3.xlarge.search, t3.2xlarge.search, ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search, t2.micro.search, t2.small.search, t2.medium.search, r3.large.search, r3.xlarge.search, r3.2xlarge.search, r3.4xlarge.search, r3.8xlarge.search, i2.xlarge.search, i2.2xlarge.search, d2.xlarge.search, d2.2xlarge.search, d2.4xlarge.search, d2.8xlarge.search, c4.large.search, c4.xlarge.search, c4.2xlarge.search, c4.4xlarge.search, c4.8xlarge.search, r4.large.search, r4.xlarge.search, r4.2xlarge.search, r4.4xlarge.search, r4.8xlarge.search, r4.16xlarge.search, i3.large.search, i3.xlarge.search, i3.2xlarge.search, i3.4xlarge.search, i3.8xlarge.search, i3.16xlarge.search, r6g.large.search, r6g.xlarge.search, r6g.2xlarge.search, r6g.4xlarge.search, r6g.8xlarge.search, r6g.12xlarge.search, m6g.large.search, m6g.xlarge.search, m6g.2xlarge.search, m6g.4xlarge.search, m6g.8xlarge.search, m6g.12xlarge.search, c6g.large.search, c6g.xlarge.search, c6g.2xlarge.search, c6g.4xlarge.search, c6g.8xlarge.search, c6g.12xlarge.search, r6gd.large.search, r6gd.xlarge.search, r6gd.2xlarge.search, r6gd.4xlarge.search, r6gd.8xlarge.search, r6gd.12xlarge.search, r6gd.16xlarge.search, t4g.small.search, t4g.medium.search
    #           dedicated_master_count: 1,
    #           warm_enabled: false,
    #           warm_type: "ultrawarm1.medium.search", # accepts ultrawarm1.medium.search, ultrawarm1.large.search, ultrawarm1.xlarge.search
    #           warm_count: 1,
    #           cold_storage_options: {
    #             enabled: false, # required
    #           },
    #         },
    #         ebs_options: {
    #           ebs_enabled: false,
    #           volume_type: "standard", # accepts standard, gp2, io1, gp3
    #           volume_size: 1,
    #           iops: 1,
    #           throughput: 1,
    #         },
    #         snapshot_options: {
    #           automated_snapshot_start_hour: 1,
    #         },
    #         vpc_options: {
    #           subnet_ids: ["String"],
    #           security_group_ids: ["String"],
    #         },
    #         cognito_options: {
    #           enabled: false,
    #           user_pool_id: "UserPoolId",
    #           identity_pool_id: "IdentityPoolId",
    #           role_arn: "RoleArn",
    #         },
    #         advanced_options: {
    #           "String" => "String",
    #         },
    #         access_policies: "PolicyDocument",
    #         log_publishing_options: {
    #           "INDEX_SLOW_LOGS" => {
    #             cloud_watch_logs_log_group_arn: "CloudWatchLogsLogGroupArn",
    #             enabled: false,
    #           },
    #         },
    #         encryption_at_rest_options: {
    #           enabled: false,
    #           kms_key_id: "KmsKeyId",
    #         },
    #         domain_endpoint_options: {
    #           enforce_https: false,
    #           tls_security_policy: "Policy-Min-TLS-1-0-2019-07", # accepts Policy-Min-TLS-1-0-2019-07, Policy-Min-TLS-1-2-2019-07
    #           custom_endpoint_enabled: false,
    #           custom_endpoint: "DomainNameFqdn",
    #           custom_endpoint_certificate_arn: "ARN",
    #         },
    #         node_to_node_encryption_options: {
    #           enabled: false,
    #         },
    #         advanced_security_options: {
    #           enabled: false,
    #           internal_user_database_enabled: false,
    #           master_user_options: {
    #             master_user_arn: "ARN",
    #             master_user_name: "Username",
    #             master_user_password: "Password",
    #           },
    #           saml_options: {
    #             enabled: false,
    #             idp: {
    #               metadata_content: "SAMLMetadata", # required
    #               entity_id: "SAMLEntityId", # required
    #             },
    #             master_user_name: "Username",
    #             master_backend_role: "BackendRole",
    #             subject_key: "String",
    #             roles_key: "String",
    #             session_timeout_minutes: 1,
    #           },
    #           anonymous_auth_enabled: false,
    #         },
    #         auto_tune_options: {
    #           desired_state: "ENABLED", # accepts ENABLED, DISABLED
    #           rollback_on_disable: "NO_ROLLBACK", # accepts NO_ROLLBACK, DEFAULT_ROLLBACK
    #           maintenance_schedules: [
    #             {
    #               start_at: Time.now,
    #               duration: {
    #                 value: 1,
    #                 unit: "HOURS", # accepts HOURS
    #               },
    #               cron_expression_for_recurrence: "String",
    #             },
    #           ],
    #         },
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you're updating.
    #   @return [String]
    #
    # @!attribute [rw] cluster_config
    #   Changes that you want to make to the cluster configuration, such as
    #   the instance type and number of EC2 instances.
    #   @return [Types::ClusterConfig]
    #
    # @!attribute [rw] ebs_options
    #   The type and size of the EBS volume to attach to instances in the
    #   domain.
    #   @return [Types::EBSOptions]
    #
    # @!attribute [rw] snapshot_options
    #   Option to set the time, in UTC format, for the daily automated
    #   snapshot. Default value is `0` hours.
    #   @return [Types::SnapshotOptions]
    #
    # @!attribute [rw] vpc_options
    #   Options to specify the subnets and security groups for a VPC
    #   endpoint. For more information, see [Launching your Amazon
    #   OpenSearch Service domains using a VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html
    #   @return [Types::VPCOptions]
    #
    # @!attribute [rw] cognito_options
    #   Key-value pairs to configure Amazon Cognito authentication for
    #   OpenSearch Dashboards.
    #   @return [Types::CognitoOptions]
    #
    # @!attribute [rw] advanced_options
    #   Key-value pairs to specify advanced configuration options. The
    #   following key-value pairs are supported:
    #
    #   * `"rest.action.multi.allow_explicit_index": "true" | "false"` -
    #     Note the use of a string rather than a boolean. Specifies whether
    #     explicit references to indexes are allowed inside the body of HTTP
    #     requests. If you want to configure access policies for domain
    #     sub-resources, such as specific indexes and domain APIs, you must
    #     disable this property. Default is true.
    #
    #   * `"indices.fielddata.cache.size": "80" ` - Note the use of a string
    #     rather than a boolean. Specifies the percentage of heap space
    #     allocated to field data. Default is unbounded.
    #
    #   * `"indices.query.bool.max_clause_count": "1024"` - Note the use of
    #     a string rather than a boolean. Specifies the maximum number of
    #     clauses allowed in a Lucene boolean query. Default is 1,024.
    #     Queries with more than the permitted number of clauses result in a
    #     `TooManyClauses` error.
    #
    #   * `"override_main_response_version": "true" | "false"` - Note the
    #     use of a string rather than a boolean. Specifies whether the
    #     domain reports its version as 7.10 to allow Elasticsearch OSS
    #     clients and plugins to continue working with it. Default is false
    #     when creating a domain and true when upgrading a domain.
    #
    #   For more information, see [Advanced cluster parameters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] access_policies
    #   Identity and Access Management (IAM) access policy as a
    #   JSON-formatted string.
    #   @return [String]
    #
    # @!attribute [rw] log_publishing_options
    #   Options to publish OpenSearch lots to Amazon CloudWatch Logs.
    #   @return [Hash<String,Types::LogPublishingOption>]
    #
    # @!attribute [rw] encryption_at_rest_options
    #   Encryption at rest options for the domain.
    #   @return [Types::EncryptionAtRestOptions]
    #
    # @!attribute [rw] domain_endpoint_options
    #   Additional options for the domain endpoint, such as whether to
    #   require HTTPS for all traffic.
    #   @return [Types::DomainEndpointOptions]
    #
    # @!attribute [rw] node_to_node_encryption_options
    #   Node-To-Node Encryption options for the domain.
    #   @return [Types::NodeToNodeEncryptionOptions]
    #
    # @!attribute [rw] advanced_security_options
    #   Options for fine-grained access control.
    #   @return [Types::AdvancedSecurityOptionsInput]
    #
    # @!attribute [rw] auto_tune_options
    #   Options for Auto-Tune.
    #   @return [Types::AutoTuneOptions]
    #
    # @!attribute [rw] dry_run
    #   This flag, when set to True, specifies whether the `UpdateDomain`
    #   request should return the results of validation check without
    #   actually applying the change.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpdateDomainConfigRequest AWS API Documentation
    #
    class UpdateDomainConfigRequest < Struct.new(
      :domain_name,
      :cluster_config,
      :ebs_options,
      :snapshot_options,
      :vpc_options,
      :cognito_options,
      :advanced_options,
      :access_policies,
      :log_publishing_options,
      :encryption_at_rest_options,
      :domain_endpoint_options,
      :node_to_node_encryption_options,
      :advanced_security_options,
      :auto_tune_options,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # The results of an `UpdateDomain` request. Contains the status of the
    # domain being updated.
    #
    # @!attribute [rw] domain_config
    #   The status of the updated domain.
    #   @return [Types::DomainConfig]
    #
    # @!attribute [rw] dry_run_results
    #   Results of a dry run performed in an update domain request.
    #   @return [Types::DryRunResults]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpdateDomainConfigResponse AWS API Documentation
    #
    class UpdateDomainConfigResponse < Struct.new(
      :domain_config,
      :dry_run_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for request parameters to the `UpdatePackage` operation.
    #
    # @note When making an API call, you may pass UpdatePackageRequest
    #   data as a hash:
    #
    #       {
    #         package_id: "PackageID", # required
    #         package_source: { # required
    #           s3_bucket_name: "S3BucketName",
    #           s3_key: "S3Key",
    #         },
    #         package_description: "PackageDescription",
    #         commit_message: "CommitMessage",
    #       }
    #
    # @!attribute [rw] package_id
    #   The unique identifier for the package.
    #   @return [String]
    #
    # @!attribute [rw] package_source
    #   Amazon S3 bucket and key for the package.
    #   @return [Types::PackageSource]
    #
    # @!attribute [rw] package_description
    #   A new description of the package.
    #   @return [String]
    #
    # @!attribute [rw] commit_message
    #   Commit message for the updated file, which is shown as part of
    #   `GetPackageVersionHistoryResponse`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpdatePackageRequest AWS API Documentation
    #
    class UpdatePackageRequest < Struct.new(
      :package_id,
      :package_source,
      :package_description,
      :commit_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the response returned by the `UpdatePackage` operation.
    #
    # @!attribute [rw] package_details
    #   Information about a package.
    #   @return [Types::PackageDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpdatePackageResponse AWS API Documentation
    #
    class UpdatePackageResponse < Struct.new(
      :package_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateVpcEndpointRequest
    #   data as a hash:
    #
    #       {
    #         vpc_endpoint_id: "VpcEndpointId", # required
    #         vpc_options: { # required
    #           subnet_ids: ["String"],
    #           security_group_ids: ["String"],
    #         },
    #       }
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The unique identifier of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] vpc_options
    #   The security groups and/or subnets to add, remove, or modify.
    #   @return [Types::VPCOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpdateVpcEndpointRequest AWS API Documentation
    #
    class UpdateVpcEndpointRequest < Struct.new(
      :vpc_endpoint_id,
      :vpc_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_endpoint
    #   The endpoint to be updated.
    #   @return [Types::VpcEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpdateVpcEndpointResponse AWS API Documentation
    #
    class UpdateVpcEndpointResponse < Struct.new(
      :vpc_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the request parameters to the `UpgradeDomain` operation.
    #
    # @note When making an API call, you may pass UpgradeDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         target_version: "VersionString", # required
    #         perform_check_only: false,
    #         advanced_options: {
    #           "String" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] domain_name
    #   Name of the OpenSearch Service domain that you want to upgrade.
    #   @return [String]
    #
    # @!attribute [rw] target_version
    #   OpenSearch or Elasticsearch version to which you want to upgrade, in
    #   the format Opensearch\_X.Y or Elasticsearch\_X.Y.
    #   @return [String]
    #
    # @!attribute [rw] perform_check_only
    #   When true, indicates that an upgrade eligibility check needs to be
    #   performed. Does not actually perform the upgrade.
    #   @return [Boolean]
    #
    # @!attribute [rw] advanced_options
    #   Only supports the `override_main_response_version` parameter and not
    #   other advanced options. You can only include this option when
    #   upgrading to an OpenSearch version. Specifies whether the domain
    #   reports its version as 7.10 so that it continues to work with
    #   Elasticsearch OSS clients and plugins.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpgradeDomainRequest AWS API Documentation
    #
    class UpgradeDomainRequest < Struct.new(
      :domain_name,
      :target_version,
      :perform_check_only,
      :advanced_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the response returned by `UpgradeDomain` operation.
    #
    # @!attribute [rw] upgrade_id
    #   The unique identifier of the domain upgrade.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that was upgraded.
    #   @return [String]
    #
    # @!attribute [rw] target_version
    #   OpenSearch or Elasticsearch version that the domain was upgraded to.
    #   @return [String]
    #
    # @!attribute [rw] perform_check_only
    #   When true, indicates that an upgrade eligibility check was
    #   performed.
    #   @return [Boolean]
    #
    # @!attribute [rw] advanced_options
    #   The advanced options configuration for the domain.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] change_progress_details
    #   Container for information about a configuration change happening on
    #   a domain.
    #   @return [Types::ChangeProgressDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpgradeDomainResponse AWS API Documentation
    #
    class UpgradeDomainResponse < Struct.new(
      :upgrade_id,
      :domain_name,
      :target_version,
      :perform_check_only,
      :advanced_options,
      :change_progress_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # History of the last 10 upgrades and upgrade eligibility checks for an
    # Amazon OpenSearch Service domain.
    #
    # @!attribute [rw] upgrade_name
    #   A string that describes the upgrade.
    #   @return [String]
    #
    # @!attribute [rw] start_timestamp
    #   UTC timestamp at which the upgrade API call was made, in the format
    #   `yyyy-MM-ddTHH:mm:ssZ`.
    #   @return [Time]
    #
    # @!attribute [rw] upgrade_status
    #   The current status of the upgrade. The status can take one of the
    #   following values:
    #
    #   * In Progress
    #
    #   * Succeeded
    #
    #   * Succeeded with Issues
    #
    #   * Failed
    #   @return [String]
    #
    # @!attribute [rw] steps_list
    #   A list of each step performed as part of a specific upgrade or
    #   upgrade eligibility check.
    #   @return [Array<Types::UpgradeStepItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpgradeHistory AWS API Documentation
    #
    class UpgradeHistory < Struct.new(
      :upgrade_name,
      :start_timestamp,
      :upgrade_status,
      :steps_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single step of an upgrade or upgrade eligibility check
    # workflow.
    #
    # @!attribute [rw] upgrade_step
    #   One of three steps that an upgrade or upgrade eligibility check goes
    #   through:
    #
    #   * PreUpgradeCheck
    #
    #   * Snapshot
    #
    #   * Upgrade
    #   @return [String]
    #
    # @!attribute [rw] upgrade_step_status
    #   The current status of the upgrade. The status can take one of the
    #   following values:
    #
    #   * In Progress
    #
    #   * Succeeded
    #
    #   * Succeeded with Issues
    #
    #   * Failed
    #   @return [String]
    #
    # @!attribute [rw] issues
    #   A list of strings containing detailed information about the errors
    #   encountered in a particular step.
    #   @return [Array<String>]
    #
    # @!attribute [rw] progress_percent
    #   The floating point value representing the progress percentage of a
    #   particular step.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/UpgradeStepItem AWS API Documentation
    #
    class UpgradeStepItem < Struct.new(
      :upgrade_step,
      :upgrade_step_status,
      :issues,
      :progress_percent)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the subnets and security groups for an Amazon
    # OpenSearch Service domain provisioned within a virtual private cloud
    # (VPC). For more information, see [Launching your Amazon OpenSearch
    # Service domains using a VPC][1]. This information only exists if the
    # domain was created with `VPCOptions`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html
    #
    # @!attribute [rw] vpc_id
    #   The ID for your VPC. Amazon VPC generates this value when you create
    #   a VPC.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet IDs associated with the VPC endpoints for the
    #   domain.
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zones
    #   The list of Availability Zones associated with the VPC subnets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The list of security group IDs associated with the VPC endpoints for
    #   the domain.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/VPCDerivedInfo AWS API Documentation
    #
    class VPCDerivedInfo < Struct.new(
      :vpc_id,
      :subnet_ids,
      :availability_zones,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status of the VPC options for a specified domain.
    #
    # @!attribute [rw] options
    #   The VPC options for the specified domain.
    #   @return [Types::VPCDerivedInfo]
    #
    # @!attribute [rw] status
    #   The status of the VPC options for the specified domain.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/VPCDerivedInfoStatus AWS API Documentation
    #
    class VPCDerivedInfoStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options to specify the subnets and security groups for an Amazon
    # OpenSearch Service VPC endpoint. For more information, see [Launching
    # your Amazon OpenSearch Service domains using a VPC][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html
    #
    # @note When making an API call, you may pass VPCOptions
    #   data as a hash:
    #
    #       {
    #         subnet_ids: ["String"],
    #         security_group_ids: ["String"],
    #       }
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet IDs associated with the VPC endpoints for the
    #   domain. If your domain uses multiple Availability Zones, you need to
    #   provide two subnet IDs, one per zone. Otherwise, provide only one.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The list of security group IDs associated with the VPC endpoints for
    #   the domain. If you do not provide a security group ID, OpenSearch
    #   Service uses the default security group for the VPC.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/VPCOptions AWS API Documentation
    #
    class VPCOptions < Struct.new(
      :subnet_ids,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception for missing / invalid input fields. Gives http status
    # code of 400.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ValidationException AWS API Documentation
    #
    class ValidationException < Aws::EmptyStructure; end

    # The status of the the OpenSearch or Elasticsearch version options for
    # the specified Amazon OpenSearch Service domain.
    #
    # @!attribute [rw] options
    #   The OpenSearch or Elasticsearch version for the specified domain.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the version options for the specified domain.
    #   @return [Types::OptionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/VersionStatus AWS API Documentation
    #
    class VersionStatus < Struct.new(
      :options,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connection endpoint for connecting to an Amazon OpenSearch Service
    # domain through a proxy.
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The unique identifier of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_owner
    #   The creator of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] domain_arn
    #   The Amazon Resource Name (ARN) of the domain associated with the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] vpc_options
    #   Options to specify the subnets and security groups for an Amazon
    #   OpenSearch Service VPC endpoint.
    #   @return [Types::VPCDerivedInfo]
    #
    # @!attribute [rw] status
    #   The current status of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The connection endpoint ID for connecting to the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/VpcEndpoint AWS API Documentation
    #
    class VpcEndpoint < Struct.new(
      :vpc_endpoint_id,
      :vpc_endpoint_owner,
      :domain_arn,
      :vpc_options,
      :status,
      :endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error information when attempting to describe an Amazon OpenSearch
    # Service-managed VPC endpoint.
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The unique identifier of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The code associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message describing the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/VpcEndpointError AWS API Documentation
    #
    class VpcEndpointError < Struct.new(
      :vpc_endpoint_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for an Amazon OpenSearch Service-managed VPC
    # endpoint.
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The unique identifier of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_owner
    #   The creator of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] domain_arn
    #   The Amazon Resource Name (ARN) of the domain associated with the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/VpcEndpointSummary AWS API Documentation
    #
    class VpcEndpointSummary < Struct.new(
      :vpc_endpoint_id,
      :vpc_endpoint_owner,
      :domain_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The zone awareness configuration for an Amazon OpenSearch Service
    # domain.
    #
    # @note When making an API call, you may pass ZoneAwarenessConfig
    #   data as a hash:
    #
    #       {
    #         availability_zone_count: 1,
    #       }
    #
    # @!attribute [rw] availability_zone_count
    #   If you enabled multiple Availability Zones, this value is the number
    #   of zones that you want the domain to use. Valid values are `2` and
    #   `3`. If your domain is provisioned within a VPC, this value be equal
    #   to number of subnets.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearch-2021-01-01/ZoneAwarenessConfig AWS API Documentation
    #
    class ZoneAwarenessConfig < Struct.new(
      :availability_zone_count)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
