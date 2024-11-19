# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class Audio < Robotto::Types::Base
       attribute :file_id, String, required: true
       attribute :file_unique_id, String, required: true
       attribute :duration, Integer, required: true
       attribute :performer, String
       attribute :title, String
       attribute :file_name, String
       attribute :mime_type, String
       attribute :file_size, Integer
       attribute :thumbnail, PhotoSize
    end
  end
end
