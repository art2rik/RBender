# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class ChatJoinRequest < Robotto::Types::Base
       attribute :chat, Chat, required: true
       attribute :from, User, required: true
       attribute :user_chat_id, Integer, required: true
       attribute :date, Integer, required: true
       attribute :bio, String
       attribute :invite_link, ChatInviteLink
    end
  end
end
