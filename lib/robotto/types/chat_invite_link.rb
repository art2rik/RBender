# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class ChatInviteLink < Robotto::Types::Base
       attribute :invite_link, String, required: true
       attribute :creator, User, required: true
       attribute :creates_join_request, [TrueClass, FalseClass], required: true
       attribute :is_primary, [TrueClass, FalseClass], required: true
       attribute :is_revoked, [TrueClass, FalseClass], required: true
       attribute :name, String
       attribute :expire_date, Integer
       attribute :member_limit, Integer
       attribute :pending_join_request_count, Integer
    end
  end
end
