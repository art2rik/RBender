# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class File < Robotto::Types::Base
       attribute :file_id, String, required: true
       attribute :file_unique_id, String, required: true
       attribute :file_size, Integer
       attribute :file_path, String
    end
  end
end
