# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class InputSticker < Robotto::Types::Base
       attribute :sticker, [InputFile, String], required: true
       attribute :emoji_list, Array, required: true
       attribute :mask_position, MaskPosition
       attribute :keywords, Array
    end
  end
end
