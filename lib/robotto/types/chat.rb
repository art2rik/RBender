# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class Chat < Robotto::Types::Base
       attribute :id, Integer, required: true
       attribute :type, String, required: true
       attribute :title, String
       attribute :username, String
       attribute :first_name, String
       attribute :last_name, String
       attribute :is_forum, [TrueClass, FalseClass]
       attribute :photo, ChatPhoto
       attribute :active_usernames, Array
       attribute :emoji_status_custom_emoji_id, String
       attribute :bio, String
       attribute :has_private_forwards, [TrueClass, FalseClass]
       attribute :has_restricted_voice_and_video_messages, [TrueClass, FalseClass]
       attribute :join_to_send_messages, [TrueClass, FalseClass]
       attribute :join_by_request, [TrueClass, FalseClass]
       attribute :description, String
       attribute :invite_link, String
       attribute :pinned_message, Message
       attribute :permissions, ChatPermissions
       attribute :slow_mode_delay, Integer
       attribute :message_auto_delete_time, Integer
       attribute :has_aggressive_anti_spam_enabled, [TrueClass, FalseClass]
       attribute :has_hidden_members, [TrueClass, FalseClass]
       attribute :has_protected_content, [TrueClass, FalseClass]
       attribute :sticker_set_name, String
       attribute :can_set_sticker_set, [TrueClass, FalseClass]
       attribute :linked_chat_id, Integer
       attribute :location, ChatLocation
    end
  end
end
