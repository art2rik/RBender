# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class SwitchInlineQueryChosenChat < Robotto::Types::Base
       attribute :query, String
       attribute :allow_user_chats, [TrueClass, FalseClass]
       attribute :allow_bot_chats, [TrueClass, FalseClass]
       attribute :allow_group_chats, [TrueClass, FalseClass]
       attribute :allow_channel_chats, [TrueClass, FalseClass]
    end
  end
end
