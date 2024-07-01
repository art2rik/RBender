# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class InlineQueryResultLocation < Robotto::Types::Base
       attribute :type, String, required: true
       attribute :id, String, required: true
       attribute :latitude, Float, required: true
       attribute :longitude, Float, required: true
       attribute :title, String, required: true
       attribute :horizontal_accuracy, Float
       attribute :live_period, Integer
       attribute :heading, Integer
       attribute :proximity_alert_radius, Integer
       attribute :reply_markup, InlineKeyboardMarkup
       attribute :input_message_content, InputMessageContent
       attribute :thumbnail_url, String
       attribute :thumbnail_width, Integer
       attribute :thumbnail_height, Integer
    end
  end
end
