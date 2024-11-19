# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class InlineQueryResultContact < Robotto::Types::Base
       attribute :type, String, required: true
       attribute :id, String, required: true
       attribute :phone_number, String, required: true
       attribute :first_name, String, required: true
       attribute :last_name, String
       attribute :vcard, String
       attribute :reply_markup, InlineKeyboardMarkup
       attribute :input_message_content, InputMessageContent
       attribute :thumbnail_url, String
       attribute :thumbnail_width, Integer
       attribute :thumbnail_height, Integer
    end
  end
end
