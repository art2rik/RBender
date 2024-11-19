# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class ReplyKeyboardRemove < Robotto::Types::Base
       attribute :remove_keyboard, [TrueClass, FalseClass], required: true
       attribute :selective, [TrueClass, FalseClass]
    end
  end
end
