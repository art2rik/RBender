# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class InputInvoiceMessageContent < Robotto::Types::Base
       attribute :title, String, required: true
       attribute :description, String, required: true
       attribute :payload, String, required: true
       attribute :provider_token, String, required: true
       attribute :currency, String, required: true
       attribute :prices, Array, required: true
       attribute :max_tip_amount, Integer
       attribute :suggested_tip_amounts, Array
       attribute :provider_data, String
       attribute :photo_url, String
       attribute :photo_size, Integer
       attribute :photo_width, Integer
       attribute :photo_height, Integer
       attribute :need_name, [TrueClass, FalseClass]
       attribute :need_phone_number, [TrueClass, FalseClass]
       attribute :need_email, [TrueClass, FalseClass]
       attribute :need_shipping_address, [TrueClass, FalseClass]
       attribute :send_phone_number_to_provider, [TrueClass, FalseClass]
       attribute :send_email_to_provider, [TrueClass, FalseClass]
       attribute :is_flexible, [TrueClass, FalseClass]
    end
  end
end
