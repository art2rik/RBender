# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class StickerSet < Robotto::Types::Base
       attribute :name, String, required: true
       attribute :title, String, required: true
       attribute :sticker_type, String, required: true
       attribute :is_animated, [TrueClass, FalseClass], required: true
       attribute :is_video, [TrueClass, FalseClass], required: true
       attribute :stickers, Array, required: true
       attribute :thumbnail, PhotoSize
    end
  end
end
