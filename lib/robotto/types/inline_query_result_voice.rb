# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class InlineQueryResultVoice < Robotto::Types::Base
       attribute :type, String, required: true
       attribute :id, String, required: true
       attribute :voice_url, String, required: true
       attribute :title, String, required: true
       attribute :caption, String
       attribute :parse_mode, String
       attribute :caption_entities, Array
       attribute :voice_duration, Integer
       attribute :reply_markup, InlineKeyboardMarkup
       attribute :input_message_content, InputMessageContent
    end
  end
end
