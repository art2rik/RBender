# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class BotCommandScopeChatMember < Robotto::Types::Base
       attribute :type, String, required: true
       attribute :chat_id, [Integer, String], required: true
       attribute :user_id, Integer, required: true
    end
  end
end
