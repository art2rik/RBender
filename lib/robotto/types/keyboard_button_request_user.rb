# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class KeyboardButtonRequestUser < Robotto::Types::Base
       attribute :request_id, Integer, required: true
       attribute :user_is_bot, [TrueClass, FalseClass]
       attribute :user_is_premium, [TrueClass, FalseClass]
    end
  end
end
