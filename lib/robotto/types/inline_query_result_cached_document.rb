# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class InlineQueryResultCachedDocument < Robotto::Types::Base
       attribute :type, String, required: true
       attribute :id, String, required: true
       attribute :title, String, required: true
       attribute :document_file_id, String, required: true
       attribute :description, String
       attribute :caption, String
       attribute :parse_mode, String
       attribute :caption_entities, Array
       attribute :reply_markup, InlineKeyboardMarkup
       attribute :input_message_content, InputMessageContent
    end
  end
end
