# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class PassportElementErrorDataField < Robotto::Types::Base
       attribute :source, String, required: true
       attribute :type, String, required: true
       attribute :field_name, String, required: true
       attribute :data_hash, String, required: true
       attribute :message, String, required: true
    end
  end
end
