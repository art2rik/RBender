# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class ChatMemberUpdated < Robotto::Types::Base
       attribute :chat, Chat, required: true
       attribute :from, User, required: true
       attribute :date, Integer, required: true
       attribute :old_chat_member, ChatMember, required: true
       attribute :new_chat_member, ChatMember, required: true
       attribute :invite_link, ChatInviteLink
       attribute :via_chat_folder_invite_link, [TrueClass, FalseClass]
    end
  end
end
