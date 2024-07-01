# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class Sticker < Robotto::Types::Base
       attribute :file_id, String, required: true
       attribute :file_unique_id, String, required: true
       attribute :type, String, required: true
       attribute :width, Integer, required: true
       attribute :height, Integer, required: true
       attribute :is_animated, [TrueClass, FalseClass], required: true
       attribute :is_video, [TrueClass, FalseClass], required: true
       attribute :thumbnail, PhotoSize
       attribute :emoji, String
       attribute :set_name, String
       attribute :premium_animation, File
       attribute :mask_position, MaskPosition
       attribute :custom_emoji_id, String
       attribute :needs_repainting, [TrueClass, FalseClass]
       attribute :file_size, Integer
    end
  end
end
