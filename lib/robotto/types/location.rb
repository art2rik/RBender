# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class Location < Robotto::Types::Base
       attribute :longitude, Float, required: true
       attribute :latitude, Float, required: true
       attribute :horizontal_accuracy, Float
       attribute :live_period, Integer
       attribute :heading, Integer
       attribute :proximity_alert_radius, Integer
    end
  end
end
