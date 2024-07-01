# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class SuccessfulPayment < Robotto::Types::Base
       attribute :currency, String, required: true
       attribute :total_amount, Integer, required: true
       attribute :invoice_payload, String, required: true
       attribute :shipping_option_id, String
       attribute :order_info, OrderInfo
       attribute :telegram_payment_charge_id, String, required: true
       attribute :provider_payment_charge_id, String, required: true
    end
  end
end
