# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class ForumTopic < Robotto::Types::Base
       attribute :message_thread_id, Integer, required: true
       attribute :name, String, required: true
       attribute :icon_color, Integer, required: true
       attribute :icon_custom_emoji_id, String
    end
  end
end
