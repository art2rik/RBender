# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class OrderInfo < Robotto::Types::Base
       attribute :name, String
       attribute :phone_number, String
       attribute :email, String
       attribute :shipping_address, ShippingAddress
    end
  end
end
