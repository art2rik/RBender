# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class ProximityAlertTriggered < Robotto::Types::Base
       attribute :traveler, User, required: true
       attribute :watcher, User, required: true
       attribute :distance, Integer, required: true
    end
  end
end
