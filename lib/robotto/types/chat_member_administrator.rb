# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class ChatMemberAdministrator < Robotto::Types::Base
       attribute :status, String, required: true
       attribute :user, User, required: true
       attribute :can_be_edited, [TrueClass, FalseClass], required: true
       attribute :is_anonymous, [TrueClass, FalseClass], required: true
       attribute :can_manage_chat, [TrueClass, FalseClass], required: true
       attribute :can_delete_messages, [TrueClass, FalseClass], required: true
       attribute :can_manage_video_chats, [TrueClass, FalseClass], required: true
       attribute :can_restrict_members, [TrueClass, FalseClass], required: true
       attribute :can_promote_members, [TrueClass, FalseClass], required: true
       attribute :can_change_info, [TrueClass, FalseClass], required: true
       attribute :can_invite_users, [TrueClass, FalseClass], required: true
       attribute :can_post_messages, [TrueClass, FalseClass]
       attribute :can_edit_messages, [TrueClass, FalseClass]
       attribute :can_pin_messages, [TrueClass, FalseClass]
       attribute :can_manage_topics, [TrueClass, FalseClass]
       attribute :custom_title, String
    end
  end
end
