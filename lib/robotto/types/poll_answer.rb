# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class PollAnswer < Robotto::Types::Base
       attribute :poll_id, String, required: true
       attribute :user, User, required: true
       attribute :option_ids, Array, required: true
    end
  end
end
