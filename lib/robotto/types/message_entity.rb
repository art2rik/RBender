# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class MessageEntity < Robotto::Types::Base
       attribute :type, String, required: true
       attribute :offset, Integer, required: true
       attribute :length, Integer, required: true
       attribute :url, String
       attribute :user, User
       attribute :language, String
       attribute :custom_emoji_id, String
    end
  end
end
