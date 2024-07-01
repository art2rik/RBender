# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class Document < Robotto::Types::Base
       attribute :file_id, String, required: true
       attribute :file_unique_id, String, required: true
       attribute :thumbnail, PhotoSize
       attribute :file_name, String
       attribute :mime_type, String
       attribute :file_size, Integer
    end
  end
end
