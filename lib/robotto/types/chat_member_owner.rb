# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class ChatMemberOwner < Robotto::Types::Base
       attribute :status, String, required: true
       attribute :user, User, required: true
       attribute :is_anonymous, [TrueClass, FalseClass], required: true
       attribute :custom_title, String
    end
  end
end
