# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class InlineQueryResultPhoto < Robotto::Types::Base
       attribute :type, String, required: true
       attribute :id, String, required: true
       attribute :photo_url, String, required: true
       attribute :thumbnail_url, String, required: true
       attribute :photo_width, Integer
       attribute :photo_height, Integer
       attribute :title, String
       attribute :description, String
       attribute :caption, String
       attribute :parse_mode, String
       attribute :caption_entities, Array
       attribute :reply_markup, InlineKeyboardMarkup
       attribute :input_message_content, InputMessageContent
    end
  end
end
