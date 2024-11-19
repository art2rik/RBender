# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class ReplyKeyboardMarkup < Robotto::Types::Base
       attribute :keyboard, Array, required: true
       attribute :is_persistent, [TrueClass, FalseClass]
       attribute :resize_keyboard, [TrueClass, FalseClass]
       attribute :one_time_keyboard, [TrueClass, FalseClass]
       attribute :input_field_placeholder, String
       attribute :selective, [TrueClass, FalseClass]
    end
  end
end
