# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class InlineQueryResultVideo < Robotto::Types::Base
       attribute :type, String, required: true
       attribute :id, String, required: true
       attribute :video_url, String, required: true
       attribute :mime_type, String, required: true
       attribute :thumbnail_url, String, required: true
       attribute :title, String, required: true
       attribute :caption, String
       attribute :parse_mode, String
       attribute :caption_entities, Array
       attribute :video_width, Integer
       attribute :video_height, Integer
       attribute :video_duration, Integer
       attribute :description, String
       attribute :reply_markup, InlineKeyboardMarkup
       attribute :input_message_content, InputMessageContent
    end
  end
end
