# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class InputTextMessageContent < Robotto::Types::Base
       attribute :message_text, String, required: true
       attribute :parse_mode, String
       attribute :entities, Array
       attribute :disable_web_page_preview, [TrueClass, FalseClass]
    end
  end
end
