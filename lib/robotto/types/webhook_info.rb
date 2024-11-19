# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class WebhookInfo < Robotto::Types::Base
       attribute :url, String, required: true
       attribute :has_custom_certificate, [TrueClass, FalseClass], required: true
       attribute :pending_update_count, Integer, required: true
       attribute :ip_address, String
       attribute :last_error_date, Integer
       attribute :last_error_message, String
       attribute :last_synchronization_error_date, Integer
       attribute :max_connections, Integer
       attribute :allowed_updates, Array
    end
  end
end
