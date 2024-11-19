# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class Invoice < Robotto::Types::Base
       attribute :title, String, required: true
       attribute :description, String, required: true
       attribute :start_parameter, String, required: true
       attribute :currency, String, required: true
       attribute :total_amount, Integer, required: true
    end
  end
end
