# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class Voice < Robotto::Types::Base
       attribute :file_id, String, required: true
       attribute :file_unique_id, String, required: true
       attribute :duration, Integer, required: true
       attribute :mime_type, String
       attribute :file_size, Integer
    end
  end
end
