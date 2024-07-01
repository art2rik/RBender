# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class InputVenueMessageContent < Robotto::Types::Base
       attribute :latitude, Float, required: true
       attribute :longitude, Float, required: true
       attribute :title, String, required: true
       attribute :address, String, required: true
       attribute :foursquare_id, String
       attribute :foursquare_type, String
       attribute :google_place_id, String
       attribute :google_place_type, String
    end
  end
end
