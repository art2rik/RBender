# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class InlineQueryResultsButton < Robotto::Types::Base
       attribute :text, String, required: true
       attribute :web_app, WebAppInfo
       attribute :start_parameter, String
    end
  end
end
