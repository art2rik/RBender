# frozen_string_literal: true

# @ THIS CLASS IS AUTO GENERATED @
module Robotto
  module Types
    class ForceReply < Robotto::Types::Base
       attribute :force_reply, [TrueClass, FalseClass], required: true
       attribute :input_field_placeholder, String
       attribute :selective, [TrueClass, FalseClass]
    end
  end
end
