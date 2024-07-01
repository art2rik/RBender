# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class ChatMemberBanned < Robotto::Types::Base
       attribute :status, String, required: true
       attribute :user, User, required: true
       attribute :until_date, Integer, required: true
    end
  end
end
