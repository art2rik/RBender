# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class PreCheckoutQuery < Robotto::Types::Base
       attribute :id, String, required: true
       attribute :from, User, required: true
       attribute :currency, String, required: true
       attribute :total_amount, Integer, required: true
       attribute :invoice_payload, String, required: true
       attribute :shipping_option_id, String
       attribute :order_info, OrderInfo
    end
  end
end
