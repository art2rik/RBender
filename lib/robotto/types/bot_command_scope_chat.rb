# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class BotCommandScopeChat < Robotto::Types::Base
       attribute :type, String, required: true
       attribute :chat_id, [Integer, String], required: true
    end
  end
end
