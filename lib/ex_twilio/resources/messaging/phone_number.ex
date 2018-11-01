defmodule ExTwilio.Messaging.PhoneNumber do
  @moduledoc """
  Represents an PhoneNumber sub-resource associated with a messaging service.

  - [Twilio docs](https://www.twilio.com/docs/proxy/api/phone-number?code-sample=code-fetch-phone-number&code-language=curl&code-sdk-version=json)
  """

  defstruct sid: nil,
            account_sid: nil,
            service_sid: nil,
            date_created: nil,
            date_updated: nil,
            phone_number: nil,
            capabilities: nil,
            url: nil

  use ExTwilio.Resource,
      import: [
        :stream,
        :all,
        :find,
        :create,
        :update,
        :destroy
      ]

  def parents, do: [%ExTwilio.Parent{module: ExTwilio.Messaging.Service, key: :service}]
end