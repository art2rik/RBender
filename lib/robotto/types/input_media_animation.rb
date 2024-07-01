# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class InputMediaAnimation < Robotto::Types::Base
       attribute :type, String, required: true
       attribute :media, String, required: true
       attribute :thumbnail, [InputFile, String]
       attribute :caption, String
       attribute :parse_mode, String
       attribute :caption_entities, Array
       attribute :width, Integer
       attribute :height, Integer
       attribute :duration, Integer
       attribute :has_spoiler, [TrueClass, FalseClass]
    end
  end
end
