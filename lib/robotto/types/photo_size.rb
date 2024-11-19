# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class PhotoSize < Robotto::Types::Base
       attribute :file_id, String, required: true
       attribute :file_unique_id, String, required: true
       attribute :width, Integer, required: true
       attribute :height, Integer, required: true
       attribute :file_size, Integer
    end
  end
end
