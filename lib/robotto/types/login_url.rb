# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class LoginUrl < Robotto::Types::Base
       attribute :url, String, required: true
       attribute :forward_text, String
       attribute :bot_username, String
       attribute :request_write_access, [TrueClass, FalseClass]
    end
  end
end
