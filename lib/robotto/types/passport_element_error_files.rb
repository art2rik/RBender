# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class PassportElementErrorFiles < Robotto::Types::Base
       attribute :source, String, required: true
       attribute :type, String, required: true
       attribute :file_hashes, Array, required: true
       attribute :message, String, required: true
    end
  end
end
