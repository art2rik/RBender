# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class InputMediaPhoto < Robotto::Types::Base
       attribute :type, String, required: true
       attribute :media, String, required: true
       attribute :caption, String
       attribute :parse_mode, String
       attribute :caption_entities, Array
       attribute :has_spoiler, [TrueClass, FalseClass]
    end
  end
end
