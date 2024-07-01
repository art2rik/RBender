# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class EncryptedPassportElement < Robotto::Types::Base
       attribute :type, String, required: true
       attribute :data, String
       attribute :phone_number, String
       attribute :email, String
       attribute :files, Array
       attribute :front_side, PassportFile
       attribute :reverse_side, PassportFile
       attribute :selfie, PassportFile
       attribute :translation, Array
       attribute :hash, String, required: true
    end
  end
end
