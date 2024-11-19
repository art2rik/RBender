# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class PassportElementErrorFile < Robotto::Types::Base
       attribute :source, String, required: true
       attribute :type, String, required: true
       attribute :file_hash, String, required: true
       attribute :message, String, required: true
    end
  end
end
