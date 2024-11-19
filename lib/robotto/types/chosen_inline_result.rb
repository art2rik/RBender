# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class ChosenInlineResult < Robotto::Types::Base
       attribute :result_id, String, required: true
       attribute :from, User, required: true
       attribute :location, Location
       attribute :inline_message_id, String
       attribute :query, String, required: true
    end
  end
end
