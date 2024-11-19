# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class InlineQueryResultArticle < Robotto::Types::Base
       attribute :type, String, required: true
       attribute :id, String, required: true
       attribute :title, String, required: true
       attribute :input_message_content, InputMessageContent, required: true
       attribute :reply_markup, InlineKeyboardMarkup
       attribute :url, String
       attribute :hide_url, [TrueClass, FalseClass]
       attribute :description, String
       attribute :thumbnail_url, String
       attribute :thumbnail_width, Integer
       attribute :thumbnail_height, Integer
    end
  end
end
