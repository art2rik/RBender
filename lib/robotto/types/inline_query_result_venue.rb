# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class InlineQueryResultVenue < Robotto::Types::Base
       attribute :type, String, required: true
       attribute :id, String, required: true
       attribute :latitude, Float, required: true
       attribute :longitude, Float, required: true
       attribute :title, String, required: true
       attribute :address, String, required: true
       attribute :foursquare_id, String
       attribute :foursquare_type, String
       attribute :google_place_id, String
       attribute :google_place_type, String
       attribute :reply_markup, InlineKeyboardMarkup
       attribute :input_message_content, InputMessageContent
       attribute :thumbnail_url, String
       attribute :thumbnail_width, Integer
       attribute :thumbnail_height, Integer
    end
  end
end
