# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class Contact < Robotto::Types::Base
       attribute :phone_number, String, required: true
       attribute :first_name, String, required: true
       attribute :last_name, String
       attribute :user_id, Integer
       attribute :vcard, String
    end
  end
end
