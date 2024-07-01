# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class GameHighScore < Robotto::Types::Base
       attribute :position, Integer, required: true
       attribute :user, User, required: true
       attribute :score, Integer, required: true
    end
  end
end
