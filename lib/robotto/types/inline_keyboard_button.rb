# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class InlineKeyboardButton < Robotto::Types::Base
       attribute :text, String, required: true
       attribute :url, String
       attribute :callback_data, String
       attribute :web_app, WebAppInfo
       attribute :login_url, LoginUrl
       attribute :switch_inline_query, String
       attribute :switch_inline_query_current_chat, String
       attribute :switch_inline_query_chosen_chat, SwitchInlineQueryChosenChat
       attribute :callback_game, CallbackGame
       attribute :pay, [TrueClass, FalseClass]
    end
  end
end
