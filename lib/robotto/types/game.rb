# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class Game < Robotto::Types::Base
       attribute :title, String, required: true
       attribute :description, String, required: true
       attribute :photo, Array, required: true
       attribute :text, String
       attribute :text_entities, Array
       attribute :animation, Animation
    end
  end
end
