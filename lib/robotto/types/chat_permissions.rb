# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class ChatPermissions < Robotto::Types::Base
       attribute :can_send_messages, [TrueClass, FalseClass]
       attribute :can_send_audios, [TrueClass, FalseClass]
       attribute :can_send_documents, [TrueClass, FalseClass]
       attribute :can_send_photos, [TrueClass, FalseClass]
       attribute :can_send_videos, [TrueClass, FalseClass]
       attribute :can_send_video_notes, [TrueClass, FalseClass]
       attribute :can_send_voice_notes, [TrueClass, FalseClass]
       attribute :can_send_polls, [TrueClass, FalseClass]
       attribute :can_send_other_messages, [TrueClass, FalseClass]
       attribute :can_add_web_page_previews, [TrueClass, FalseClass]
       attribute :can_change_info, [TrueClass, FalseClass]
       attribute :can_invite_users, [TrueClass, FalseClass]
       attribute :can_pin_messages, [TrueClass, FalseClass]
       attribute :can_manage_topics, [TrueClass, FalseClass]
    end
  end
end
