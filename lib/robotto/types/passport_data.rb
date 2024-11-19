# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class PassportData < Robotto::Types::Base
       attribute :data, Array, required: true
       attribute :credentials, EncryptedCredentials, required: true
    end
  end
end
