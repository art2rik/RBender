# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class InlineQueryResultMpeg4Gif < Robotto::Types::Base
       attribute :type, String, required: true
       attribute :id, String, required: true
       attribute :mpeg4_url, String, required: true
       attribute :mpeg4_width, Integer
       attribute :mpeg4_height, Integer
       attribute :mpeg4_duration, Integer
       attribute :thumbnail_url, String, required: true
       attribute :thumbnail_mime_type, String
       attribute :title, String
       attribute :caption, String
       attribute :parse_mode, String
       attribute :caption_entities, Array
       attribute :reply_markup, InlineKeyboardMarkup
       attribute :input_message_content, InputMessageContent
    end
  end
end
