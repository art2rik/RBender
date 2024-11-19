# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class ShippingQuery < Robotto::Types::Base
       attribute :id, String, required: true
       attribute :from, User, required: true
       attribute :invoice_payload, String, required: true
       attribute :shipping_address, ShippingAddress, required: true
    end
  end
end
