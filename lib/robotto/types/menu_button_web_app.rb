# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class MenuButtonWebApp < Robotto::Types::Base
       attribute :type, String, required: true
       attribute :text, String, required: true
       attribute :web_app, WebAppInfo, required: true
    end
  end
end
