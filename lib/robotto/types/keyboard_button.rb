# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class KeyboardButton < Robotto::Types::Base
       attribute :text, String, required: true
       attribute :request_user, KeyboardButtonRequestUser
       attribute :request_chat, KeyboardButtonRequestChat
       attribute :request_contact, [TrueClass, FalseClass]
       attribute :request_location, [TrueClass, FalseClass]
       attribute :request_poll, KeyboardButtonPollType
       attribute :web_app, WebAppInfo
    end
  end
end
