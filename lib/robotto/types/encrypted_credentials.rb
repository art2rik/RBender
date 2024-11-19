# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class EncryptedCredentials < Robotto::Types::Base
       attribute :data, String, required: true
       attribute :hash, String, required: true
       attribute :secret, String, required: true
    end
  end
end
