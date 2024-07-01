# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class InputMediaAudio < Robotto::Types::Base
       attribute :type, String, required: true
       attribute :media, String, required: true
       attribute :thumbnail, [InputFile, String]
       attribute :caption, String
       attribute :parse_mode, String
       attribute :caption_entities, Array
       attribute :duration, Integer
       attribute :performer, String
       attribute :title, String
    end
  end
end
