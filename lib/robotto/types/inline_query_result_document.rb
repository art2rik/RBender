# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class InlineQueryResultDocument < Robotto::Types::Base
       attribute :type, String, required: true
       attribute :id, String, required: true
       attribute :title, String, required: true
       attribute :caption, String
       attribute :parse_mode, String
       attribute :caption_entities, Array
       attribute :document_url, String, required: true
       attribute :mime_type, String, required: true
       attribute :description, String
       attribute :reply_markup, InlineKeyboardMarkup
       attribute :input_message_content, InputMessageContent
       attribute :thumbnail_url, String
       attribute :thumbnail_width, Integer
       attribute :thumbnail_height, Integer
    end
  end
end
