# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class InlineQueryResultCachedSticker < Robotto::Types::Base
       attribute :type, String, required: true
       attribute :id, String, required: true
       attribute :sticker_file_id, String, required: true
       attribute :reply_markup, InlineKeyboardMarkup
       attribute :input_message_content, InputMessageContent
    end
  end
end
