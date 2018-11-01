defmodule ExTwilio.Messaging.Service do
  @moduledoc"""
  Represents a messaging service resource.
  - [https://www.twilio.com/docs/sms/services/api]

  To see all accounts and subaccounts that your auth_token has access to, run:

      ExTwilio.Service.all

  If you want to find a Service, use `find/1`.

      ExTwilio.Service.find("sid")
  """

defstruct sid: nil,
          account_sid: nil,
          date_created: nil,
          date_updated: nil,
          friendly_name: nil,
          inbound_request_url: nil,
          inbound_method: nil,
          fallback_url: nil,
          fallback_method: nil,
          status_callback: nil,
          sticky_sender: nil,
          smart_encoding: nil,
          mms_converter: nil,
          fallback_to_long_code: nil,
          scan_message_content: nil,
          area_code_geomatch: true,
          validity_period: nil,
          synchronous_validation: nil,
          links: nil,
          url: nil

  use ExTwilio.Resource, import: [:stream, :all, :find, :create, :update]

end