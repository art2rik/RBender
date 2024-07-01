# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class InlineQuery < Robotto::Types::Base
       attribute :id, String, required: true
       attribute :from, User, required: true
       attribute :query, String, required: true
       attribute :offset, String, required: true
       attribute :chat_type, String
       attribute :location, Location
    end
  end
end
