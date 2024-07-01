# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class ShippingAddress < Robotto::Types::Base
       attribute :country_code, String, required: true
       attribute :state, String, required: true
       attribute :city, String, required: true
       attribute :street_line1, String, required: true
       attribute :street_line2, String, required: true
       attribute :post_code, String, required: true
    end
  end
end
