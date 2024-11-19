# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class ChatMemberRestricted < Robotto::Types::Base
       attribute :status, String, required: true
       attribute :user, User, required: true
       attribute :is_member, [TrueClass, FalseClass], required: true
       attribute :can_send_messages, [TrueClass, FalseClass], required: true
       attribute :can_send_audios, [TrueClass, FalseClass], required: true
       attribute :can_send_documents, [TrueClass, FalseClass], required: true
       attribute :can_send_photos, [TrueClass, FalseClass], required: true
       attribute :can_send_videos, [TrueClass, FalseClass], required: true
       attribute :can_send_video_notes, [TrueClass, FalseClass], required: true
       attribute :can_send_voice_notes, [TrueClass, FalseClass], required: true
       attribute :can_send_polls, [TrueClass, FalseClass], required: true
       attribute :can_send_other_messages, [TrueClass, FalseClass], required: true
       attribute :can_add_web_page_previews, [TrueClass, FalseClass], required: true
       attribute :can_change_info, [TrueClass, FalseClass], required: true
       attribute :can_invite_users, [TrueClass, FalseClass], required: true
       attribute :can_pin_messages, [TrueClass, FalseClass], required: true
       attribute :can_manage_topics, [TrueClass, FalseClass], required: true
       attribute :until_date, Integer, required: true
    end
  end
end
