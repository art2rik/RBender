# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class KeyboardButtonRequestChat < Robotto::Types::Base
       attribute :request_id, Integer, required: true
       attribute :chat_is_channel, [TrueClass, FalseClass], required: true
       attribute :chat_is_forum, [TrueClass, FalseClass]
       attribute :chat_has_username, [TrueClass, FalseClass]
       attribute :chat_is_created, [TrueClass, FalseClass]
       attribute :user_administrator_rights, ChatAdministratorRights
       attribute :bot_administrator_rights, ChatAdministratorRights
       attribute :bot_is_member, [TrueClass, FalseClass]
    end
  end
end
