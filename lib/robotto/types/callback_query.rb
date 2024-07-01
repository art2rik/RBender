# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class CallbackQuery < Robotto::Types::Base
       attribute :id, String, required: true
       attribute :from, User, required: true
       attribute :message, Message
       attribute :inline_message_id, String
       attribute :chat_instance, String, required: true
       attribute :data, String
       attribute :game_short_name, String
    end
  end
end
