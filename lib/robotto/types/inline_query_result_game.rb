# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class InlineQueryResultGame < Robotto::Types::Base
       attribute :type, String, required: true
       attribute :id, String, required: true
       attribute :game_short_name, String, required: true
       attribute :reply_markup, InlineKeyboardMarkup
    end
  end
end
